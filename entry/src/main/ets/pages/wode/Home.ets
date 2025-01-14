import router from '@ohos.router'
import ListChatItem, { ChatItemData } from '../../component/ListChatItem'
import WechatToolbar from '../../component/WechatToolbar'

@Preview
@Component
export default struct Home {
  @State chatList: ChatItemData[] = [
    {
      headSrc: $r("app.media.ic_user_head3"),
      nickname: "游戏好友",
      content: "😒😒😒😒😒😒😒😒😒",
      time: "15:38"
    },
    { headSrc: $r("app.media.ic_user_head4"),
      nickname: "同事袁权",
      content: "瓦罗兰特上号！！！！",
      time: "14:12"
    },
    { headSrc: $r("app.media.ic_user_head5"),
      nickname: "小赵",
      content: "赶紧来，年薪100万！！！",
      time: "12:08"
    },
    { headSrc: $r("app.media.ic_user_head6"),
      nickname: "好友袁通",
      content: "吃啥！！！",
      time: "昨天" },
    { headSrc: $r("app.media.ic_user_head7"),
      nickname: "儿子杨玉涵",
      content: "好的，爸爸",
      time: "周一" }
  ]

  build() {
    Column() {
      WechatToolbar({ title: "微信(999)" })

      List() {
        ForEach(this.chatList, (item: ChatItemData, index: number) => {
          ListItem() {
            ListChatItem({ data: item })
          }
          .onClick(() => {
            router.pushUrl({ url: 'pages/chat/ChatPage',
              params: {name:item.nickname}
            })
          })
        })
        ListItem() {
          Divider().color('#0000').strokeWidth(0)
        }
      }
      .divider({ strokeWidth: 0.8, color: '#f0f0f0', startMargin: 90, endMargin: 0 }) // 每行之间的分界线
      .backgroundColor(Color.White)
      .width("100%")
      .height("100%")

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#f0f0f0")
  }
}
