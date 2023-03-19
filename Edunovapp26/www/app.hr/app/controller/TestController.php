<?php

class TestController
{


    public function lozinka()
    {
        echo password_hash('edunova',PASSWORD_BCRYPT);
    }

    public function email()
    {

        
        echo Util::is_email('tjakopec@gmail.com') ? 'OK' : 'NE'; 
        
    }

}