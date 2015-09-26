<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午9:22
 */
namespace Home\Model;

use Think\Model;

class VideoModel extends Model
{
    //或者使用字符串定义

    protected $tableName = 'video';
    protected $tablePrefix = '';
    protected $trueTableName = 'video';
    protected $fields = array('id', 'title', 'url', 'description', 'for_the_people_id', 'technoogy_id', 'free_tf', 'prise', 'send_integral', 'image', 'add_time',
        '_type' => array('id' => 'int', 'title' => 'varchar', 'url' => 'text', 'description' => 'varchar', 'for_the_people_id' => 'int', 'technology_id' => 'int', 'free_tf' => 'tinyint', 'prise' => 'numeric', 'send_integral' => 'int', 'image' => 'varchar', 'add_time' => 'datetime'));
    protected $pk = 'id';

    //视频列表
    public function ShowVideo($user_id = 0, $limit = 0)
    {
        $ForThePeople = D("ForThePeople");
        $Technology = D("Technology");
        $result = $this->query("select * from video RIGHT join buy_record on video.id=buy_record.buy_id limit " . $limit . "," . ($limit + 25));
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                if (is_null($list['title'])) {
                    continue;
                } else {
                    $return[$i]['id'] = $list['id'];
                    $return[$i]['title'] = $list['title'];
                    $return[$i]['url'] = $list['url'];
                    $return[$i]['description'] = $list['description'];
                    $return[$i]['for_the_people'] = $ForThePeople->where("id=%d", $list['for_the_people_id'])->getField("for_the_people_name");
                    $return[$i]['technology'] = $Technology->where("id=%d", $list['technology_id'])->getField("technology_name");
                    $return[$i]['free_tf'] = $list['free_tf'];
                    $return[$i]['prise'] = $list['prise'];
                    $return[$i]['send_integral'] = $list['send_integral'];
                    $return[$i]['image'] = $list['image'];
                    $return[$i]['add_time'] = $list['add_time'];
                    if (is_null($list['user_id'])) {
                        $return[$i]['buy_tf'] = 0;
                    } else {
                        if ($list['user_id'] == $user_id and $list['buy_category'] == 1) {
                            $return[$i]['buy_tf'] = 1;
                        } else {
                            $return[$i]['buy_tf'] = 0;
                        }
                    }
                    ++$i;
                }
            }
            if (count($return) == 0) {
                //数据不存在 ,返回-1
                return -1;
            } else {
                return $return;
            }
        } else {
            //数据不存在 ,返回-1
            return -1;
        }
        //return $result;
    }

    public function IsVideoTf($video_id)
    {
        if ($this->where("id=%d", $video_id)->select() != NULL) {
            return true;
        } else {
            return false;
        }
    }
}