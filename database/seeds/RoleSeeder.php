<?php

use Spatie\Permission\Models\Role;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create([
            'name' => 'superadmin',
            'display_name' => 'web'
        ]);

        Role::create([
            'name' => 'admin',
            'display_name' => 'web'
        ]);
         
        Role::create([
            'name' => 'user',
            'display_name' => 'web'
        ]);
    }
}
