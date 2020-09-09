<?php

namespace app\components;

use yii\base\Component;
use Yii;

class UserHelper extends Component {
    public static function Fullname(){
        if(!Yii::$app->user->isGuest){

            $user = Yii::$app->user->identity;
            return  $user->first_name ? $user->first_name.' '.$user->last_name : $user->email;
        }else{
            return null;
        }
    }



}
