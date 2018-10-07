<?php


namespace App\Utils;

class Check
{
    //
    public static function isEmailLegal($email)
    {
        $whitelist = array("qq.com", "vip.qq.com", "gmail.com", "outlook.com", "hotmail.com", "126.com", "139.com", "163.com", "sina.cn", "sina.com", "sohu.com","aliyun.com","tom.com","icloud.com","me.com","yeah.net"); #白名单
        $blocklist = array("sawoe.com", "chacuo.net", "027168.com","nwytg.net","moakt.com"); #黑名单
      
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
          	$Mailbox_Suffix = explode('@', $email)[1]; #获取邮箱后缀
            if(in_array("$Mailbox_Suffix",$whitelist)){
				return true;
			}
        } else {
            return false;
        }
    }
}
