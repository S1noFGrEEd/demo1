import router from '@ohos.router';
@Entry
@Component
struct Yuezi {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Button("后退").onClick(() => {
          router.pushUrl({ url: 'pages/homepage' })
        })
          .width("60%")
          .height("10%")
        List() {
          ListItem() {
            Row() {
              Image($r('app.media.YZ1'))
                .width("50%")
                .height("100%")
              Text("   乌梅生姜红糖汤\n原料：乌梅，生姜，红糖。")
                .width("50%")
                .height("100%")
                .fontSize("20fp")
            }
            .width("100%")
            .height("100%")
          }
          .width("100%")
          .height("30%")
          ListItem() {
            Row() {
              Image($r('app.media.YZ2'))
                .width("50%")
                .height("100%")
              Text("     花生猪手汤\n原料： 猪手 、花生米")
                .width("50%")
                .height("100%")
                .fontSize("20fp")
            }
            .width("100%")
            .height("100%")
          }
          .width("100%")
          .height("30%")
          ListItem() {
            Row() {
              Image($r('app.media.YZ3'))
                .width("50%")
                .height("100%")
                .objectFit(ImageFit.Fill)
              Text("      益母草茶\n原料：益母草，老姜，红糖，清水.")
                .width("50%")
                .height("100%")
                .fontSize("20fp")
            }
            .width("100%")
            .height("100%")
          }
          .width("100%")
          .height("30%")
          .width("100%")
          .height("30%")
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}