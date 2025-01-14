// import { Prompt, router } from '@kit.ArkUI'
// //导入LIstData里的数据
// // getData获取全部数据，Liebiao是每一条展示结果的单项类
// import {getData,Liebiao} from './ListData'
// // 导入购物车 产品类添加到数据当中
// //导入本地存储的包
// import preferences from '@ohos.data.preferences';
//
//
// //购物车的类
//
// // 用于将当前添加完类的数组存储到本地存储的方法
//
//
// //将推荐的内容封装成自定义构建函数
// // 将标签 样式 事件变成一个函数
//
// @Builder
// function MyRecomm(){
//   Column() {
//     Text('推荐的内容').fontSize(30)
//     // 小说推荐列表
//     List({ space: 20, initialIndex: 0 }) {
//
//       ListItem() {
//         // 小说 1
//         Row() {
//           Image($rawfile('001.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('SpiritZ1精准射击斩获ACE，DRG2-1击败JDG').fontSize(16).width('90%')
//             Text('击败JDG').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 2
//         Row() {
//           Image($rawfile('003.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('创*纪元套装及25VCT队伍礼包1月10').fontSize(16).width('90%')
//             Text('日上架商城').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('004.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('无畏契约1月9日更新公告').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('005.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('新赛季全新皮肤套装，英雄，战斗通').fontSize(16).width('90%')
//             Text('行证首曝！').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('006.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('2025无畏契约反炸鱼公告').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('007.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('热爱，坚持，创作！快来解锁2025瓦').fontSize(16).width('90%')
//             Text('瓦创作者年度同人作品').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('008.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('掉帧！卡顿！面对这些问题，《无畏').fontSize(16).width('90%')
//             Text('契约》团队都干了什么？').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('009.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('全新道具类型“盘盘”即将上线！').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//
//       ListItem() {
//         // 小说 3
//         Row() {
//           Image($rawfile('002.jpg'))
//             .width(100)
//             .height(150)
//             .objectFit(ImageFit.Cover)
//           Column() {
//             Text('无畏契约跨端功能1月2日正式上线').fontSize(16).width('90%')
//             Button('查看详情')
//               .onClick(() => {
//                 // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
//                 router.pushUrl({
//                   url:"pages/Index"
//                 })
//               })
//           }
//         }
//       }
//     }
//     .width('100%')
//   }
//
// }
//
//
// //将封装好的推荐的自定义构建函数导出
// export { MyRecomm}

import { Prompt, router } from '@kit.ArkUI'
//导入LIstData里的数据
// getData获取全部数据，Liebiao是每一条展示结果的单项类
import {getData,Liebiao} from './ListData'
// 导入购物车 产品类添加到数据当中
//导入本地存储的包
import preferences from '@ohos.data.preferences';


//购物车的类

// 用于将当前添加完类的数组存储到本地存储的方法


//将推荐的内容封装成自定义构建函数
// 将标签 样式 事件变成一个函数

@Builder
function MyRecomm(){
  Column() {
    Text('推荐的内容').fontSize(30)
    // 小说推荐列表
    List({ space: 20, initialIndex: 0 }) {

      ListItem() {
        // 小说 1
        Row() {
          Image($rawfile('001.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('SpiritZ1精准射击斩获ACE，DRG2-1击败JDG').fontSize(16).width('90%')
            Text('击败JDG').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 2
        Row() {
          Image($rawfile('003.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('创*纪元套装及25VCT队伍礼包1月10').fontSize(16).width('90%')
            Text('日上架商城').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('004.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('无畏契约1月9日更新公告').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('005.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('新赛季全新皮肤套装，英雄，战斗通').fontSize(16).width('90%')
            Text('行证首曝！').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('006.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('2025无畏契约反炸鱼公告').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('007.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('热爱，坚持，创作！快来解锁2025瓦').fontSize(16).width('90%')
            Text('瓦创作者年度同人作品').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('008.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('掉帧！卡顿！面对这些问题，《无畏').fontSize(16).width('90%')
            Text('契约》团队都干了什么？').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('009.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('全新道具类型“盘盘”即将上线！').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }

      ListItem() {
        // 小说 3
        Row() {
          Image($rawfile('002.jpg'))
            .width(100)
            .height(150)
            .objectFit(ImageFit.Cover)
          Column() {
            Text('无畏契约跨端功能1月2日正式上线').fontSize(16).width('90%')
            Button('查看详情')
              .onClick(() => {
                // 这里假设的路由跳转函数，跳转到小说详情页，实际需替换
                router.pushUrl({
                  url:"pages/Index"
                })
              })
          }
        }
      }
    }
    .width('100%')
  }

}
//列表的单项组件
@Component
struct listItemComm{
  @Prop item1:Liebiao ={
    "type":"",
    "name":'',
    "content":"",
    "pic":$rawfile("1.jpg"),
    "price":"",
    "typenum":12
  }


  //购物车里添加的产品值




  build(){
    Column(){
      Row(){
        Text(this.item1.type)
          .width(80)
          .height(40)
          .borderColor(Color.Blue)
          .borderWidth(2)
          .fontSize(30)
          .fontColor("#acd234")
          .textAlign(TextAlign.Center)
          .borderRadius("16%")

        Text(this.item1.name)
          .margin({left:5})
          .fontSize(36)
          .fontColor("#aaa")

        Image($rawfile("shopcar.jpg"))
          .width(40)
          .height(40)
          .margin({left:80})
          .zIndex(200)
      }.width("100%")
      .margin({top:20})
      Row(){
        Text(this.item1.content)
          .fontSize(18)
          .fontColor("#bbb")
          .fontStyle(FontStyle.Italic)
      }
      Row(){
        Image(this.item1.pic)
          .width(300)
          .height(300)
      }
      Row(){
        Text(this.item1.price+"元")
          .fontSize(25)
          .fontColor(Color.Blue)

      }
    }.width("100%")
  }
}

//自定义的列表组件，同时实现了父组件往当前传输了一个 索引值
@Component
struct ListComponent {
  //如果索引是-1 默认是所有的产品都显示
  @Prop typeIndex:number= -1;
  private listScroller: Scroller = new Scroller();

  async aboutToAppear(): Promise<void> {
    let context = getContext();
    try {
      const preferencesObj = await preferences.getPreferences(context, "shopcar_preferences");
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

  build() {
    // HelloComponent自定义组件组合系统组件Row和Text
    Row() {
      Image($rawfile("dingbu.png"))
        .width(80)
        .height(80)
        .position({x:"80%",y:"90"})
        .zIndex(200)
        .onClick(()=>{
          //回到列表顶部
          this.listScroller.scrollToIndex(0)
        })

      // `` 反向单引号 和${这里边可以显示变量和进行逻辑运算}
      List({scroller: this.listScroller}){
        ForEach(getData(),(item:Liebiao,index)=>{
          //如果是默认的索引就显示所有条目
          if(this.typeIndex==-1){
            ListItem(){

            }
          }
          // 如果点击的索引和item种类索引（typenum）一样，
          if(this.typeIndex==item.typenum){
            ListItem(){

            }
          }

        })
      }
    }
  }
}




//视频播放组件
@Component
export struct VideoPlayer{
  private controller:VideoController | undefined=new VideoController();
  @Prop innerResource: Resource = $rawfile('video2.mp4');
  build(){
    Column() {
      Video({
        src: this.innerResource,

        controller: this.controller
      })
    }
  }
}



//将封装好的推荐的自定义构建函数导出
export { MyRecomm,ListComponent}