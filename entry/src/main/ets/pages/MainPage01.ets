

//从外部文件中导入推荐内容的自定义构建函数
import {MyRecomm} from './Mycomn'

// 导入购物车 产品类添加到数据当中

//导入本地存储的包
import preferences from '@ohos.data.preferences';


//图标类型
class IconItem{
  pic:Resource=$rawfile('icon1.jpg')
  type:string=""
}

//创建一个类，装载接口返回的地址参数
class MyPicItem{
  success:boolean=true
  type:string=""
  url:string=""
}

@Entry
@Component
struct MainPage {
  //购物车里添加的产品值


  @State message: string = '我是主页';
  //装载6个图标类型对象的数组
  @State IconArray:IconItem[]=[
    {pic:$rawfile('xunlian.jpg'),type:"训练营"},
    {pic:$rawfile('xinyuan.jpg'),type:"心愿单"},
    {pic:$rawfile('dingdan.jpg'),type:"订单"},
    {pic:$rawfile('wodechoucang.jpg'),type:"我的收藏"},
    {pic:$rawfile('wodepifu.jpg'),type:"我的皮肤"},


  ]

  //变量类型是动态变量，记录点击图标类型的索引
  @State typeIndex:number=-1
  //外部joke变量，去改变对话框里的joke
  @State joke:string=""
  //  定义一个随机图片地址
  @State custPic:string =""
  //自定义弹出框的变量初始化
  //弹出窗的取消和确认按钮的函数

  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({
      //this.joke发生改变，里边的joke笑话跟着一起改变
      joke:this.joke,
      custPic:this.custPic

    }),
  })

  private preferenceName1: string = "shopcar_preferences"; // 自定义的偏好设置名称，

  //购物车本地初始化函数
  // 初始化时从本地存储中读取数据
  private async initDataFromLocalStorage() {
    let context = getContext();
    try {
      const preferencesObj = await preferences.getPreferences(context, this.preferenceName1);
      const storedData = await preferencesObj.get("cartItems", "");
      if (typeof storedData === 'string' && storedData.length > 0) {
        try {

        } catch (parseError) {
          console.error("解析本地存储数据时出错: ", parseError);
        }
      }
    } catch (err) {
      console.error("从本地存储读取数据时出错: ", err);
    }
  }




  //组件加载完后执行的函数  生命周期函数
  aboutToAppear(): void {
    this.initDataFromLocalStorage()
  }

  // 装载6个图标的对象数组
  //局部的自定义构建函数
  @Builder
  MyIndexPage(){
    Column(){

      //代办事项
      //在首页加入 轮播图  加入6个小图标  一行三个  滚动列表，右下角功能图标
      // 1 轮播
      Swiper() {
        Image($rawfile('VCT.jpg'))
          .width("100%")
          .height(240)
        Image($rawfile('taozhuang.jpg'))
          .width("100%")
          .height(240)
        Image($rawfile('yingxiong.jpg'))
          .width("100%")
          .height(240)
      }
      .loop(true)
      .autoPlay(true)
      .interval(1000)

      //6个小图标
      //FlexAlign.SpaceAround 图标距离两边的距离上中间距离的一半
      Flex({wrap:FlexWrap.Wrap,justifyContent:FlexAlign.SpaceAround}){//会把图片都放到一行（弹性布局）
        ForEach(this.IconArray,(item:IconItem,index)=>{
          Column(){
            Image(item.pic)
              .width(60)
              .height(60)
              .onClick(()=>{
                this.typeIndex=index
              })
            Text(item.type)
          }.width("30%")
          .margin({top:8})
        })

      }

    }.width("100%")
    .height("100%")
  }


  build() {
    Column() {
      //tab切花的组件
      Tabs({ barPosition: BarPosition.End}) {
        TabContent() {
          //引入内部封装的首页自定义构建函数
          this.MyIndexPage()

        }
        .tabBar('首页')
        .width("100%")

        TabContent() {
          //推荐内容自定义构建函数
          MyRecomm()
        }
        .tabBar('推荐')


        TabContent() {


            Column() {
              // 个人信息部分
              Column() {
                // 假设这里有获取用户名等信息的函数，你可以根据实际情况替换

                Image($rawfile('shangbobo.png'))  // 替换为用户真实头像资源路径
                  .width(80)
                  .height(80)
                  .borderRadius(40)  // 设置为圆形头像
                  .margin({ top: 20 });
                Text("YCU丨YT丨")
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                  .margin({ top: 10 });
                // 这里可以继续添加更多个人信息展示，比如用户等级等
                Text("等级：LV 179")
                  .fontSize(16)
                  .margin({ top: 5 });
                Text("战绩")
                  .fontSize(25)
                  .margin({right:300})
                Image($rawfile('010.jpg'))
                  .width(350)


              }.width("100%")


              List({ space: 10 }) {

              }.width("100%")
              .height(200)  // 根据实际情况调整合适高度
              .margin({ top: 20 });

              // 偏好部分，同样假设存在偏好数据结构示例（实际需按真实情况修改）

              List({ space: 10 }) {

              }.width("100%")
              .height(150)  // 根据实际展示情况调整高度
              .margin({ top: 20 });
            }



        }
        .tabBar("我的")
      }
      .width("100%")

      .margin({top:-40,bottom:-5})

      //.vertical(true)
    }
    .height('100%')
    .width('100%')
  }
}

//自定义弹出框
@CustomDialog
struct CustomDialogExample {
  controller: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({}),
  })
  //该笑话需要从外部传入进来
  @State joke:string=""
  @State custPic:string =""
  @State progressValue: number = 0
  @State op:number = 0

  @State offsetX: number = 0;
  @State offsetY: number = 0;
  @State positionX: number = 0;
  @State positionY: number = 0;



  aboutToAppear(): void {
    console.log("啦啊啦啦啦啦")
    let dsq= setInterval(()=>{
      this.progressValue += 25
      if (this.progressValue == 100){
        clearInterval(dsq)
        this.progressValue = -2
        this.op = 1

      }

    },1000)
  }

  build() {
    Column() {
      Text(this.joke)
        .fontSize(20)
        .margin({ top: 10, bottom: 10 })

      Image(this.custPic)
        .width(200)
        .height(200)
        .borderWidth(2)
        .borderColor("#ccc")
        .opacity(this.op)
      // 在组件上绑定缩放比例，可以通过修改缩放比例来实现组件的缩小或者放大


      if(this.progressValue!=-2){
        Column() {
          Progress({value:0, total:100, type:ProgressType.Capsule}).width(200).height(50).value(this.progressValue)
          Row().width('100%').height(5)

        }
      }

      Row(){
        Button("确认").width("80").height(40).onClick(()=>{
          this.controller.close()
        })
          .translate({ x: this.offsetX, y: this.offsetY, z: 0 })
          .gesture(
            // 绑定拖动手势
            PanGesture()
              .onActionStart((event: GestureEvent|undefined) => {
                console.info('Pan start');
              })
                // 当触发拖动手势时，根据回调函数修改组件的布局位置信息
              .onActionUpdate((event: GestureEvent|undefined) => {
                if(event){
                  this.offsetX = this.positionX + event.offsetX;
                  this.offsetY = this.positionY + event.offsetY;
                }
              })
              .onActionEnd(() => {
                this.positionX = this.offsetX;
                this.positionY = this.offsetY;
              })
          )
      }
      Text('PanGesture Offset:\nX: ' + this.offsetX + '\n' + 'Y: ' + this.offsetY)
        .fontSize(28)
        .height(350)
        .width(300)
        .padding(20)
        .border({ width: 3 })
    }
    .width("98%")
    .height("99%")
  }
}