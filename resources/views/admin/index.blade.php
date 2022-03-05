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
                                <button class="btn" onclick="sync()">sync</button>
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
            $.ajax('/admin/sync', {
                success: function(data) { // success callback function
                    Swal.fire('sync ok');
                },
                error: function(jqXhr, textStatus, errorMessage) { // error callback
                    $('p').append('Error: ' + errorMessage);
                }
            });
        }

        function addUser() {
            Swal.fire({
                title: 'Add User',
                html: '<input id="email" placeholder="Email" class="swal2-input">' +
                    '<input id="password" placeholder="Password" class="swal2-input">',
                focusConfirm: false,
                preConfirm: () => {
                    $.ajax('/admin/add-user', {
                        type: 'POST',
                        data:{
                            email:document.getElementById('email').value,
                            password:document.getElementById('password').value
                        },
                        success: function(data) { // success callback function
                            console.log(data)
                            if(data.status){
                                Swal.fire('add user ok');
                            }
                            else{
                                Swal.fire('there is error');
                            }

                        },
                        error: function(jqXhr, textStatus, errorMessage) { // error callback
                            $('p').append('Error: ' + errorMessage);
                        }
                    });



                    return [

                    ]
                }
            })
        }
    </script>
@endsection
