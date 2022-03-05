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
            // Swal.fire({
            //     title: 'Add User',
            //     html: '<input id="email" placeholder="Email" class="swal2-input">' +
            //         '<input id="password" placeholder="Password" class="swal2-input">',
            //     icon: 'warning',
            //     showCancelButton: true,
            //     confirmButtonColor: '#3085d6',
            //     cancelButtonColor: '#d33',
            //     confirmButtonText: 'Submit'
            //     }).then((result) => {
            //     if (result.isConfirmed) {
            //         Swal.fire(
            //         'Deleted!',
            //         'Your file has been deleted.',
            //         'success'
            //         )
            //     }
            // })
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
