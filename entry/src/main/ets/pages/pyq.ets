import { Prompt, router } from '@kit.ArkUI'


//将推荐的内容封装成自定义构建函数
// 将标签 样式 事件变成一个函数
/*@Builder
function MyRecomm(){*/
@Entry
@Component
struct MyComm {
  @State message: string = '注册';
  //@State  动态变量只要发生改变，页面能检测到改变的值，跟着一起改变
  @State user:string=""
  @State Pass:string=""
  @State RePass:string=""
  build() {
    Column() {
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Text('<').fontSize(18)//可以加个返回的onclick
        Text('朋友圈').fontSize(18)
        Image($rawfile('相机.jpg')).width(30)
      }.padding(10)

    //香水推荐列表
    List({ space: 20, initialIndex: 0 }) {
      ListItem(){
        Column(){
          Image($rawfile('朋友圈背景图.jpg'))
            .width('100%')
        }
      }
      //木易
      ListItem() {
        Row() {
          Image($rawfile('头像1.jpg'))
            .width(60)
            .padding(10)
            .objectFit(ImageFit.Cover)
            .margin({bottom:170})
          Column() {
            Text('木易').fontSize(18).width('90%').margin({left:0})
            Text('“04.24,和sakura去东京天空树, \n' +'世界上最暖和的地方在天空树的顶上。”').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('涩谷1.jpg')).width(150).margin({right:170})
            Text('日本・渋谷区・渋谷ヒカリェ').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(5)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //大饼
      ListItem() {
        Row() {
          Image($rawfile('头像2.jpg'))
            .width(60)
            .padding(10)
            .objectFit(ImageFit.Cover)
            .margin({bottom:210})
          Column() {
            Text('一块忧郁的大饼').fontSize(18).width('90%')
            Text('大饼 出行记🌴\n' +
              '📍  平潭\n' +
              ' “人总会喜欢反季节的事物，在厚重的冬日会想念蝉鸣的夏日”').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('福建平潭.jpg')).width(150).margin({right:170})
            Text('福州市·平潭').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(5)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //lemon
      ListItem() {
        Row() {
          Image($rawfile('头像3.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:240})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('lemon').fontSize(18).width('90%')
            Text('埃菲尔铁塔蕴含了一句很浪漫的情话').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('巴黎铁塔.jpg')).width(150).margin({right:170})
            Text('法国·Presles·Gare de Presles').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(5)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //卫东
      ListItem() {
        Row() {
          Image($rawfile('头像8.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:160})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('👻').fontSize(18).width('90%')
            Text('ᯓ“晋”在其中•︡ᯅ•︠').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('太原植物园.jpg')).width(150).margin({right:170})
            Text('太原市·太原植物园').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(5)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //樱
      ListItem() {
        Row() {
          Image($rawfile('头像4.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:240})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('樱').fontSize(18).width('90%')
            Text('📍跨越千里，赴十年之约').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('天池.png')).width(150).margin({right:170})
            Text('延边朝鲜族自治州·长白山天池').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(5)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //红兵
      ListItem() {
        Row() {
          Image($rawfile('头像5.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:260})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('🤔').fontSize(18).width('90%')
            Text('“少年手指的方向便是前路”').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('张洪彬.png')).width(150).margin({right:170})
            Text('运城市·运城学院').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(5)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //通
      ListItem() {
        Row() {
          Image($rawfile('头像6.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:260})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('M晨星S').fontSize(18).width('90%')
            Text('灯在人心，人在心中，\n'+'人心不灭，灯芯不灭').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('悬空寺.png')).width(150).margin({right:170})
            Text('大同市·悬空寺').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(0)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //权
      ListItem() {
        Row() {
          Image($rawfile('头像7.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:240})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('竹一.').fontSize(18).width('90%')
            Text('拉文克劳新生报到！').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('霍格沃茨.png')).width(150).margin({right:170})
            Text('美国 Universal Studios Orlando').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(0)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      //木易
      ListItem() {
        Row() {
          Image($rawfile('头像1.jpg'))
            .width(60)
            .padding(10)
            .margin({bottom:250})
            .objectFit(ImageFit.Cover)
          Column() {
            Text('木易').fontSize(18).width('90%')
            Text('路君，高天原酒窖里的酒很好喝吧，\n'+'不知道有没有浇灭你的懦弱呢').fontSize(16).width('90%').margin({ left: 0, top: 5, right: 5, bottom: 5 });
            Image($rawfile('龙族3.png')).width(150).margin({right:170})
            Text('日本 Baishinji Station(梅津寺馭)').fontSize(16).width('90%')
            Button('··')
              .width(40)
              .height(20)
              .backgroundColor('#CCCCFF')
              .borderRadius(0)
              .margin({left:180})
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }.border({width:{bottom:1},color:"#ffebedf0"}).padding(5)
      }
      .width('100%')
    }

  }

}



//将封装好的推荐的自定义构建函数导出
/*
export { MyRecomm}*/
