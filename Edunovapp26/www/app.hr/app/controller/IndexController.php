<?php

class IndexController extends Controller
{


    // kasnije ćemo staviti konstruktor

    public function index()
    {

       $this->view->render('index');
        
    }

    public function prijava()
    {
     $this->view->render('prijava',[
        'poruka'=>'',
        'email'=>''
     ]);
        
    }

    public function kontakt()
    {
        $this->view->render('kontakt');
        
    }

    public function api()
    {
        $this->view->api([
            'podaci'=>[
                'id'=>2,
                'osoba'=>[
                    'ime'=>'Pero',
                    'prezime'=>'Perić'
                ]
            ]
        ]);
        
    }


}