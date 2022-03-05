<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('main_users', function (Blueprint $table) {
            $table->id();
            $table->string('email');
            $table->string('password');
            $table->string('role');
            $table->boolean('is_synced')->default(false);
            $table->timestamps();
        });

        Schema::create('third_party_users', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('email');
            $table->string('password')->nullable();
            $table->string('role');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tables');
    }
}
