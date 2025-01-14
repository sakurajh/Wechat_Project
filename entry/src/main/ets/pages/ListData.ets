class  Liebiao
  {
  type: string = ""
  name: string = ""
  content: string = ""
  pic: Resource = $rawfile("1.jpg")
  price: string = "100"
  //默认条目的编号
  typenum: number = 0
}

// 主要的作用是用来返回数据，否则主页代码太多
function getData(): Liebiao[] {

  //列表的对象数组
  let array: Liebiao[] = [
    {
      "type": "训练",
      "name": '新手',
      "content": "射击训练",
      "pic": $rawfile("naima.jpg"),
      "price": "0",
      "typenum": 0

    },
    {
      "type": "心愿",
      "name": '标配',
      "content": "VCT*TE",
      "pic": $rawfile("TE.jpg"),
      "price": "129",
      "typenum": 1

    },
    {
      "type": "收藏",
      "name": '套装',
      "content": "归零者2.0",
      "pic": $rawfile("guiling.jpg"),
      "price": "629",
      "typenum": 3
    },
    {
      "type": "我的",
      "name": '塑水宗',
      "content": "套装",
      "pic": $rawfile("sushui.jpg"),
      "price": "629",
      "typenum": 4

    },
    {
      "type": "我的",
      "name": '源能者娱乐系统冥狙',
      "content": "单品",
      "pic": $rawfile("dianwandajv.jpg"),
      "price": "256",
      "typenum": 4

    },
    {
      "type": "我的",
      "name": '般若假面狂徒',
      "content": "单品",
      "pic": $rawfile("egui.jpg"),
      "price": "20000",
      "typenum": 4

    },
    {
      "type": "心愿",
      "name": '狂徒',
      "content": "盖世英雄",
      "pic": $rawfile("wukong.jpg"),
      "price": "129",
      "typenum": 1

    },
    {
      "type": "收藏",
      "name": '单品',
      "content": "双城之战——狂徒",
      "pic": $rawfile("baobao.jpg"),
      "price": "8000",
      "typenum": 3
    },
    {
      "type": "心愿",
      "name": '刀皮',
      "content": "雷切",
      "pic": $rawfile("leiqie.jpg"),
      "price": "378",
      "typenum": 1
    },
    {
      "type": "订单",
      "name": '上古龙炎',
      "content": "礼包",
      "pic": $rawfile("longyan.jpg"),
      "price": "629",
      "typenum": 2
    },
  ]

  return array
}

//导出数据 让别的文件能够使用
export { getData, Liebiao }
