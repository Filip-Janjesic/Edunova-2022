<?php

if($_POST['email']==='polaznik40@ednuova.hr' && 
    $_POST['lozinka']==='polaznik40'){
        session_start();
        $_SESSION['auth']=true;
        setcookie('email',$_POST['email']);
        header('location: zasticeno.php');

    }else{
        header('location: index.php?email=' . $_POST['email']);
    }