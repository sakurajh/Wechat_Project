//用来播放音乐 切换音乐 暂停音乐 进度调整 后台播放音乐的工具类
import media from '@ohos.multimedia.media';
import { SONG_KEY } from '../constants1';
import { PlayStateType, songItemType } from '../models1';

export class AvPlayerManager {
  static player: media.AVPlayer | null = null //播放器对象
  static currentSong : PlayStateType = new PlayStateType() //记录当前的播放歌曲
  //初始化播放器
  static async init(){
    //保证当前只有一个播放器 不重复创建不浪费资源
    if(!AvPlayerManager.player){
      AvPlayerManager.player = await media.createAVPlayer()
    }
    AvPlayerManager.player.on("stateChange", (state) => {
      switch (state) {
        case  "initialized":
          AvPlayerManager.player?.prepare() // 准备
          break;
        case "prepared":
          AvPlayerManager.player?.play() // 播放
          break;
      }
    })
    //  监听歌曲时长
    AvPlayerManager.player.on('durationUpdate',(duration)=>{
      // 每次切换歌曲都会触发这个函数，更新即可
      AvPlayerManager.currentSong.duration = duration
      AppStorage.setOrCreate<PlayStateType>(SONG_KEY, AvPlayerManager.currentSong) // 更新全局状态
    })
    //  监听播放时长
    AvPlayerManager.player.on('timeUpdate', (time) => {
      AvPlayerManager.currentSong.time = time
      AppStorage.setOrCreate<PlayStateType>(SONG_KEY, AvPlayerManager.currentSong) // 更新全局状态
    })
  }

  //点击某个歌曲播放
  static singlePlay(song:songItemType){
    // AvPlayerManager.player!.url = song.url //(!.是非空断言操作符)
    // 添加到播放列表中，再进行播放
    const isList = AvPlayerManager.currentSong.playList.some((item: songItemType) => item.id === song.id)
    if (isList) {
      // 是不是正在播放的
      if (AvPlayerManager.player!.url === song.url) {
        // 重新播放（切换当前播放索引的歌曲）
        // 如果是同一首 则继续播放
        AvPlayerManager.player?.play()
        AvPlayerManager.currentSong.isPlay = true
      } else {
        // 切换歌曲(更新播放索引切换歌曲)
        AvPlayerManager.currentSong.playIndex = AvPlayerManager.currentSong.playList.findIndex((item: songItemType) => item.id === song.id)
        AvPlayerManager.changePlay()
      }
    } else {
      AvPlayerManager.currentSong.playList.unshift(song)
      AvPlayerManager.currentSong.playIndex = 0
      AvPlayerManager.currentSong.isPlay = true
      AvPlayerManager.changePlay()
    }
    AppStorage.setOrCreate<PlayStateType>(SONG_KEY, AvPlayerManager.currentSong) // 更新全局状态
  }
  // 切换歌曲
  static async changePlay() {
    // 重置播放器状态至初始化,异步方法
    await AvPlayerManager.player!.reset()
    // 重置播放状态
    AvPlayerManager.currentSong.duration = 0
    AvPlayerManager.currentSong.time = 0
    AvPlayerManager.player!.url =   AvPlayerManager.currentSong.playList[  AvPlayerManager.currentSong.playIndex].url
    AvPlayerManager.currentSong.img =   AvPlayerManager.currentSong.playList[  AvPlayerManager.currentSong.playIndex].img
    AvPlayerManager.currentSong.name =   AvPlayerManager.currentSong.playList[  AvPlayerManager.currentSong.playIndex].name
    AvPlayerManager.currentSong.author =   AvPlayerManager.currentSong.playList[  AvPlayerManager.currentSong.playIndex].author
    AvPlayerManager.currentSong.url =   AvPlayerManager.currentSong.playList[  AvPlayerManager.currentSong.playIndex].url
  }
  // 暂停播放
  static pause(){
    AvPlayerManager.player!.pause()
    // 更新播放器状态
    AvPlayerManager.currentSong.isPlay = false
    AppStorage.set<PlayStateType>(SONG_KEY,   AvPlayerManager.currentSong) // 更新到
  }

}