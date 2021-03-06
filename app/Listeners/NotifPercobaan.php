<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Notification;

use App\User;
use App\Notifications\SendNotif;

class NotifPercobaan
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        $admins = User::where('id', 11)->get();
        
        Notification::send($admins, new SendNotif($event->user));
    }
}
