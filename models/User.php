<?php

namespace app\models;

use Yii;
use yii\base\NotSupportedException;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;

// class User extends \yii\db\ActiveRecord
class User extends ActiveRecord implements IdentityInterface
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pw_users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['document_verified', 'email_verified', 'status', 'account_type', 'account_level', 'last_login', 'signup_time', '2fa_auth', '2fa_auth_login', '2fa_auth_send', '2fa_auth_withdrawal', 'deposit_via', 'withdraw_via', 'sattlement_via'], 'integer'],
            [['deposit_via', 'withdraw_via', 'sattlement_via'], 'required'],
            [['password', 'password_recovery', 'email_hash', 'email', 'account_user', 'ip', 'googlecode', 'wallet_passphrase', 'first_name', 'last_name', 'business_name', 'merchant_api_key', 'country', 'city', 'province', 'zip_code', 'address', 'birthday_date'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'password' => 'Password',
            'password_recovery' => 'Password Recovery',
            'document_verified' => 'Document Verified',
            'email_verified' => 'Email Verified',
            'email_hash' => 'Email Hash',
            'email' => 'Email',
            'status' => 'Status',
            'account_type' => 'Account Type',
            'account_level' => 'Account Level',
            'account_user' => 'Account User',
            'ip' => 'Ip',
            'last_login' => 'Last Login',
            'signup_time' => 'Signup Time',
            '2fa_auth' => '2fa Auth',
            '2fa_auth_login' => '2fa Auth Login',
            '2fa_auth_send' => '2fa Auth Send',
            '2fa_auth_withdrawal' => '2fa Auth Withdrawal',
            'googlecode' => 'Googlecode',
            'wallet_passphrase' => 'Wallet Passphrase',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'business_name' => 'Business Name',
            'merchant_api_key' => 'Merchant Api Key',
            'country' => 'Country',
            'city' => 'City',
            'province' => 'Province',
            'zip_code' => 'Zip Code',
            'address' => 'Address',
            'birthday_date' => 'Birthday Date',
            'deposit_via' => 'Deposit Via',
            'withdraw_via' => 'Withdraw Via',
            'sattlement_via' => 'Sattlement Via',
        ];
    }

    public function getId()
    {
        return $this->getPrimaryKey();
    }

    public static function findIdentity($id)
    {
        return static::findOne(['id' => $id]);
    }

    public static function findByUsername($username)
    {
        return static::findOne(['email' => $username, 'account_level' => '666']);
    }

    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword($password, $this->password);
    }

    public function setPassword($password)
    {
        $this->password = Yii::$app->security->generatePasswordHash($password);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
    }

    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

    public function getAuthKey()
    {
        return $this->auth_key;
    }

}
