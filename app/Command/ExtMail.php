<?php


namespace App\Command;

use App\Models\User;
use App\Services\Config;
use App\Services\Mail;

class ExtMail
{
    public static function sendNoMail()
    {
        $users = User::all();
        foreach ($users as $user) {
            if ($user->t==0) {
                echo "Send daily mail to user: ".$user->id;
                $subject = Config::get('appName')."-期待您的回归";
                $to = $user->email;
                $text = "似乎您在".Config::get('appName')."上的流量一直是 0 呢(P.S:也可能是您没有使用 ss 而使用了其他还不能计入流量的方式....)，如果您在使用上遇到了任何困难，请不要犹豫，登录到".Config::get('appName').",您就会知道如何使用了，特别是对于 iOS 用户，最近在使用的优化上大家都付出了很多的努力。期待您的回归～" ;
                try {
                    Mail::send($to, $subject, 'ext/back.tpl', [
                    "user" => $user,"text" => $text
                ], [
                ]);
                } catch (Exception $e) {
                    echo $e->getMessage();
                }
            }
        }
    }

    public static function sendOldMail()
    {
        $users = User::all();
        foreach ($users as $user) {
            if ($user->t!=0&&$user->t<1451577599) {
                echo "Send daily mail to user: ".$user->id;
                $subject = Config::get('appName')."-期待您的回归";
                $to = $user->email;
                $text = "似乎您在 2016 年以来就没有使用过".Config::get('appName')."了呢，如果您在使用上遇到了任何困难，请不要犹豫，登录到".Config::get('appName')."，您就会知道如何使用了，特别是对于 iOS 用户，最近在使用的优化上大家都付出了很多的努力。期待您的回归～" ;
                try {
                    Mail::send($to, $subject, 'ext/back.tpl', [
                        "user" => $user,"text" => $text
                    ], [
                    ]);
                } catch (Exception $e) {
                    echo $e->getMessage();
                }
            }
        }
    }

    public static function sendmail()
    {
        $users = User::all();
        foreach ($users as $user) {
            
                echo "Send daily mail to user: ".$user->id;
                $subject = Config::get('appName')."-【新增多个节点，请更新订阅】";
                $to = $user->email;
                $text = "
                            1.三月份终于挺过去啦，感谢大家的支持。期间服务不太稳定，所以决定所有购买套餐的用户三月免费使用——账号有效时间延长一个月<br>
                            2.新增了香港2、新加坡、日本节点，请更新订阅后使用，更新方法请登陆网站查看教程第三步<br>
                            Tips：想获取最新消息请加qq群：691603639，或微信开启QQ邮箱提醒功能，具体操作：我-设置-通用-功能-QQ邮箱提醒-接收邮件提醒，或下载第三方邮箱客户端如网易邮箱大师等。<br>
                            小飞机加速器感谢您的支持！
                        ";
                try {
                    Mail::send($to, $subject, 'ext/back.tpl', [
                        "user" => $user,"text" => $text
                    ], [
                    ]);
                } catch (Exception $e) {
                    echo $e->getMessage();
                }
                //if ($user->id==3){return;}
        }
    }

}
