//导入弹窗的包，进行页面跳转的路由包
import { Prompt, router, TabBarOptions } from '@kit.ArkUI';

@Entry
@Component
struct Login {
  @State message: string = '注册';
  //@State  动态变量只要发生改变，页面能检测到改变的值，跟着一起改变
  @State user:string=""
  @State Pass:string=""
  @State RePass:string=""
  build() {
    Column(){
      Text("用手机号注册")
        .fontSize(26)
        .padding(10)

      Image($rawfile('头像1.jpg'))
        .width(80)
        .padding(10)
        .objectFit(ImageFit.Cover)
        .margin({bottom:50})

      //昵称
      Row(){
        Text('昵称')
          .width('100%')
          .height(40)
          .padding({left:20})
        TextInput({placeholder:"请填写昵称"})
          .width("100%")
          .maxLength(11)
          .backgroundColor('#ffffff')
          .position({x:'100%',y:0})
          .translate({x:-245,y:0})
          .onChange((value)=>{
            this.user=value
          })
            //使用户只能输入数字

      }
      .border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      .width('100%')

      //国家/地区
      Row(){
        Text('国家/地区')
          .width('100%')
          .height(40)
          .padding({left:20})
        Text('中国大陆')
          .position({x:'100%',y:0})
          .translate({x:-230,y:10})
        Text('>')
          .position({x:'100%',y:0})
          .translate({x:-30,y:10})
          .fontColor('#a2a9ac')
      }
      .border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      .width('100%')

      //手机号
      Row(){
          Text('手机号')
              .width('100%')
              .height(40)
              .margin({right:0,left:20})

          TextInput({placeholder:"+86  请输入手机号："})
            .width("100%")
            .maxLength(11)
            .backgroundColor('#ffffff')
            .position({x:'100%',y:0})
            .translate({x:-245,y:0})
            .onChange((value)=>{
              this.user=value
            })
              //使用户只能输入数字
            .type(InputType.Number)
        }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)

      //密码
      Row(){
        Text('密码')
          .width('100%')
          .height(40)
          .margin({right:0,left:20})

        TextInput({placeholder:"请设置密码"})
          //只能输入密码类型
          .type(InputType.Password)
          .width("70%")
          .maxLength(11)
          .backgroundColor('#ffffff')
          .position({x:'100%',y:0})
          .translate({x:-245,y:0})
          .onChange((value)=>{
            //只要数值改变的输入，就会触发这个事件onChange
            //触发这个事件之后，把输入的值放到value之中
            this.Pass=value
          })
      }
      .border({width:{bottom:1},color:"#ffebedf0"}).padding(5)


      Row(){
        Checkbox()
          .width(12).height(12).margin({top:6,right:10,left:30})
        Text(){
          Span('我已阅读并同意').fontColor('#a2a9ac')
          Span('《软件许可及服务协议》').fontColor('#3079fe')
          /*Span('')*/
          Span('本页面收集的信息仅用于注册账号').fontColor('#a2a9ac')
        }
        .fontSize(12)
        .fontColor('#999')
        .lineHeight(20)
        .margin({right:80})
      }
      .alignItems(VerticalAlign.Top).margin({top:30})
      .padding(30)

      //注册
      Row(){
        Button("注册",{type:ButtonType.Capsule,stateEffect:true})
          .width(100)
          .height(40)
          .backgroundColor('#1AAD19')
          .borderRadius(0)
          .onClick(()=> {
            router.pushUrl({
              url:"pages/WeiChatRegister"
            })
            /*if(this.Pass=="1"&&this.RePass=="1"){
              //跳转到主页面
              router.pushUrl({
                url:"pages/Login"
              })
            }
            else {
              //否则弹窗显示输入有误
              Prompt.showToast({
                message:"输入正确的注册信息",
                duration:3000
              })
            }*/
          })

        Button("返回",{type:ButtonType.Capsule,stateEffect:true})
          .width(100)
          .height(40)
          .backgroundColor('#1AAD19')
          .borderRadius(0)
          .onClick(()=>{
            router.pushUrl({
              url:"pages/WeiChatLogin"
            })
          })
      }
      .margin({top:20})
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
    }
    .height('100%')
    .width('100%')
    .backgroundImageSize(ImageSize.FILL)
    .expandSafeArea([SafeAreaType.SYSTEM])
  }
}