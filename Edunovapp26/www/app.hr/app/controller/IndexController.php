<?php

class IndexController
{


    // kasnije ćemo staviti konstruktor

    public function index()
    {
        $view = new View();
        $view->render('index');
        
    }


}