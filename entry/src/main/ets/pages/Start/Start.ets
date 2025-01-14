import { window } from '@kit.ArkUI'

@Entry
@Component
struct Advertisement {
  @State time: number = 5
  timer: number = -1
  @StorageProp("topHeight")
  topHeight:number = 0
  @StorageProp("bottomHeight")
  bottomHeight:number = 0
  aboutToAppear() {
    // 必须重置才能改动画的内容
    this.timer = setInterval(() => {
      if (this.time <= 0) {
        clearInterval(this.timer)
        window.findWindow("ad_win").destroyWindow()
        return
      }
      this.time -= 1
    }, 1000)
  }

  aboutToDisappear() {
    clearInterval(this.timer)
  }

  build() {
    Stack({ alignContent: Alignment.TopEnd }) {
      Button(`跳过${this.time}`)
        .onClick(() => {
          window.findWindow("ad_win").destroyWindow()
        })
        .margin(12)
        .backgroundColor('#ccc')
        .fontColor('#fff')
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.ad'))
    .backgroundImageSize({
      width: '100%',
      height: '100%'
    })
    .padding({
      top: this.topHeight,
      bottom: this.bottomHeight,
    })
  }
}