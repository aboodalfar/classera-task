@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Dashboard') }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <ul class="d-block">
                            <li>
                                <button class="btn" onclick="sync()">
                                    <i class="fa fa-spinner fa-spin" id='loading' style='display:none'></i>
                                    sync
                                </button>
                            </li>
                            <li>
                                <button class="btn" onclick="addUser()">add user</button>
                            </li>
                        </ul>


                        {{ __('You are logged in!') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        function sync() {
            $('#loading').show();
            $.ajax('/admin/sync', {
                success: function(data) { // success callback function
                    Swal.fire('sync ok');
                    $('#loading').hide();
                },
                error: function(jqXhr, textStatus, errorMessage) { // error callback
                    $('p').append('Error: ' + errorMessage);
                }
            });
        }

        function addUser() {
            Swal.fire({
                title: 'Add User',
                showCancelButton: true,
                confirmButtonText: "Add",
                html: '<input id="email" placeholder="Email" class="swal2-input">' +
                    '<input id="password" placeholder="Password" class="swal2-input">',
                focusConfirm: false,
                preConfirm: () => {
                    let status;
                    return new Promise(function (resolve,reject) {
                     $.ajax('/admin/add-user', {
                        type: 'POST',
                        data:{
                            email:document.getElementById('email').value,
                            password:document.getElementById('password').value
                        },
                        success: function(data) { // success callback function
                            if(data.status){
                                Swal.fire('add user ok');
                            }
                            else{
                                Swal.fire('there is error');
                            }
                            resolve(true)

                        },
                        error: function(jqXhr, textStatus, errorMessage) { // error callback
                            Object.values(jqXhr.responseJSON.errors).forEach(val => {
                                val.forEach((element) => {
                                    alert(element)
                                });

                            });
                            resolve(false)
                        }
                    });
                        });
                }
            })
        }
    </script>
@endsection
