//导入弹窗的包，进行页面跳转的路由包
import { Prompt, router, TabBarOptions } from '@kit.ArkUI';
import promptAction from '@ohos.promptAction';
//鸿蒙访问java springboot后台获取用户的方法
import {getUser} from './MyHttp'

//用来接收后端传过来的数据，转化为User类
class User{
  id:string=""
  username:string=""
  password:string=""
}

@Entry
@Component
struct Login {
  @State message: string = '登录与注册';
  //@State  动态变量只要发生改变，页面能检测到改变的值，跟着一起改变
  @State user:string=""
  @State Pass:string=""


  build() {
    Column(){
      Row(){
        Text('帮助')
          .fontSize(16).fontColor('#666')
          .fontColor(Color.White)
      }
      .width('100%')
      .justifyContent(FlexAlign.End)

      TextInput({placeholder:"请输入用户名："})
        .margin({top:400})
        .maxLength(11)
        .inputStyle()//提取公共的部分
        .type(InputType.USER_NAME)
        .onChange((value)=>{//输入值发生变化，触发回调，value代表输入的内容
          this.user=value
          console.info('user: '+ value)
        })


      TextInput({placeholder:"请输入微信密码："})
        //只能输入密码类型
        .type(InputType.Password)
        .margin({top:20})
        .inputStyle()
        .onChange((value)=>{
          //只要数值改变的输入，就会触发这个事件onChange
          //触发这个事件之后，把输入的值放到value之中
          this.Pass=value
          console.info('user: '+ value)
        })


      Column(){
        Row(){
          Button("登录",{type:ButtonType.Capsule,stateEffect:true})
            .width('30%')
            .height(40)
            .borderRadius(5)
            .margin({right:10})
            .backgroundColor('#1AAD19')
            .onClick(async ()=>{
              let data1=await getUser("http://localhost:8080/user/one/",this.user)
              let message= data1['result']['message'] as string
              let user= data1['result']['user'] as User
              console.log("从后端传递过来的用户名",user.username)
              console.log("从后端传递过来的用户名",user.password)
              //如果用户名查找不到，后端返回信息错误
              if(message == "error"){
                Prompt.showToast({"message":"用户名或者密码错误"})
              }
              else{
                if(user.password==this.Pass){
                  router.pushUrl({
                    url:"pages/Index"
                  })
                }
                else{
                  Prompt.showToast({"message":"用户名或者密码错误"})
                }
              }

            })
          Button("注册",{type:ButtonType.Capsule,stateEffect:true})
            .width(80)
            .width('30%')
            .height(40)
            .margin({left:10})
            .borderRadius(5)
            .backgroundColor('#1AAD19')
            .onClick(()=>{
              router.pushUrl({
                url:"pages/WeiChatRegister"
              })
            })
        }

      }
      .margin({top:22})
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Column(){

        Row(){
          Text("找回密码")
            .margin({top:70})
            .fontSize('14fp')
            .fontColor(Color.White)
            .padding(10)
          Text("紧急冻结")
            .margin({top:70})
            .fontSize('14fp')
            .fontColor(Color.White)
            .padding(10)
          Text("更多")
            .margin({top:70})
            .fontSize('14fp')
            .fontColor(Color.White)
            .padding(10)
        }.justifyContent(FlexAlign.Center)

      }

    }
    .padding(20)
    .height('100%')
    .width('100%')
    .backgroundImage($r("app.media.beijing"))
    .backgroundImageSize(ImageSize.FILL)
    .expandSafeArea([SafeAreaType.SYSTEM])
  }
}

@Extend(TextInput) function inputStyle(){
  .padding('8vp')
  .width("70%")
  .borderWidth(2)
  .borderRadius(20)
  .border({ width: 1, color: Color.Black }) // 设置边框宽度为 1 并将边框颜色设置为透明
  /*.borderColor(Color.White)*/
  .fontColor('#a2a9ac')
  .placeholderColor("#eee")
}
