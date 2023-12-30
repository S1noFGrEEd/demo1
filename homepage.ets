import web_webview from '@ohos.web.webview';
import router from '@ohos.router';
@Entry
@Component
struct Homepage {
  @State
  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

  build() {
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column() {
              Text("首页")
                .width("200vp")
                .height("60vp")
                .textAlign(TextAlign.Center)
                .fontSize("30fp")
              Swiper() {
                Image($r('app.media.swipe1'))
                  .width("100%")
                  .height("100%")
                Image($r('app.media.swipe2'))
                  .width("100%")
                  .height("100%")
                Image($r('app.media.swipe3'))
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
              }
              .width("100%")
              .height("30%")

              Row() {
                Column() {
                  Image($r('app.media.1'))
                    .width("100%")
                    .height("60%")
                    .objectFit(ImageFit.Fill)
                  Text("健康减肥")
                    .width("100%")
                    .height("40%")
                    .textAlign(TextAlign.Center)
                    .fontSize("20fp")
                }
                .width("25%")
                .height("100%")

                Column() {
                  Image($r('app.media.2'))
                    .width("100%")
                    .height("60%")
                    .objectFit(ImageFit.Fill)
                  Text("膳食指南")
                    .width("100%")
                    .height("40%")
                    .textAlign(TextAlign.Center)
                    .fontSize("20fp")
                }
                .width("25%")
                .height("100%")

                Column() {
                  Image($r('app.media.3'))
                    .width("100%")
                    .height("60%")
                    .objectFit(ImageFit.Fill)
                  Text("专家建议")
                    .width("100%")
                    .height("40%")
                    .textAlign(TextAlign.Center)
                    .fontSize("20fp")
                }
                .width("25%")
                .height("100%")

                Column() {
                  Image($r('app.media.schedule'))
                    .width("100%")
                    .height("60%")
                    .objectFit(ImageFit.Fill)
                  Text("每日打卡")
                    .width("100%")
                    .height("40%")
                    .textAlign(TextAlign.Center)
                    .fontSize("20fp")
                }
                .width("25%")
                .height("100%")
              }
              .width("100%")
              .height("20%")
              .offset({ x: "0vp", y: "7.26vp" })

              Text("食谱推荐")
                .width("200vp")
                .height("60vp")
                .offset({ x: "0vp", y: "8.73vp" })
                .textAlign(TextAlign.Center)
                .fontSize("25fp")
              List() {
                ListItem() {
                  Column() {
                    Image($r('app.media.yangsheng'))
                      .width("100%")
                      .height("50%")
                      .objectFit(ImageFit.Fill)
                    Text("养生餐")
                      .onClick(() => {
                        // 跳转到第二页
                        router.pushUrl({ url: 'pages/yangsheng' })
                      })
                      .width("100%")
                      .height("25%")
                      .offset({ x: "0vp", y: "0vp" })
                      .textAlign(TextAlign.Center)
                      .fontSize("20fp")
                    Button("前往")
                      .onClick(() => {
                        // 跳转到第二页
                        router.pushUrl({ url: 'pages/ys' })
                      })
                      .width("100%")
                      .height("25%")
                      .offset({ x: "0vp", y: "-0.25vp" })
                      .fontSize("17fp")
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("25%")
                .height("100%")

                ListItem() {
                  Column() {
                    Image($r('app.media.yuezican'))
                      .width("100%")
                      .height("50%")
                      .objectFit(ImageFit.Fill)
                    Text("月子餐")
                      .width("100%")
                      .height("25%")
                      .textAlign(TextAlign.Center)
                      .fontSize("20fp")
                    Button("前往").onClick(() => {
                      // 跳转到第二页
                      router.pushUrl({ url: 'pages/yuezi' })
                    })
                      .width("100%")
                      .height("25%")
                      .fontSize("17fp")
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("25%")
                .height("100%")

                ListItem() {
                  Column() {
                    Image($r('app.media.zengjican'))
                      .width("100%")
                      .height("50%")
                      .objectFit(ImageFit.Fill)
                    Text("增肌餐")
                      .width("100%")
                      .height("25%")
                      .textAlign(TextAlign.Center)
                      .fontSize("20fp")
                    Button("前往").onClick(() => {
                      // 跳转到第二页
                      router.pushUrl({ url: 'pages/zengji' })
                    })
                      .width("100%")
                      .height("25%")
                      .fontSize("17fp")
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("25%")
                .height("100%")

                ListItem() {
                  Column() {
                    Image($r('app.media.1_1'))
                      .width("100%")
                      .height("50%")
                    Text("减脂餐")
                      .width("100%")
                      .height("25%")
                      .textAlign(TextAlign.Center)
                      .fontSize("20fp")
                    Button("前往")
                      .width("100%")
                      .height("25%")
                      .fontSize("17fp")
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("25%")
                .height("100%")
              }
              .width("100%")
              .height("25%")
              .offset({ x: "0vp", y: "11.17vp" })
              .listDirection(Axis.Horizontal)
            }
            .width("100%")
            .height("100%")
            .offset({ x: "0vp", y: "0vp" })
          }
          .tabBar({ icon: $r('app.media.main'), text: "首页" })

          TabContent() {
            Column() {
              Row() {
                Button("后退").onClick(() => {
                  this.webviewController.backward();
                }).width("50%")
                  .height("100%")
                Button("刷新").onClick(() => {
                  this.webviewController.refresh();
                }).width("50%")
                  .height("100%")


              }
              .padding(12)
              .backgroundColor(Color.Gray)
              .width('100%')
              .height("10%")

              Web({ src: 'https://nlc.chinanutri.cn/fq/', controller: this.webviewController })
                .domStorageAccess(true)
            }
          }

          .tabBar({ icon: $r('app.media.search'), text: "信息库" })

          TabContent() {
            Column() {
              Image($r('app.media.dailyplan'))
                .width("100%")
                .height("40%")
                .offset({ x: "0vp", y: "-153.34vp" })
              DatePicker()
                .width("100%")
                .height("128.23vp")
                .offset({ x: "0vp", y: "-127.73vp" })


            }
          }
          .tabBar({ icon: $r('app.media.plan'), text: "每日计划" })

          TabContent() {
            Column() {
              Stack() {
                Image($r('app.media.touxiang'))
                  .width("100vp")
                  .height("100vp")
                  .offset({ x: "-0.33vp", y: "-20.98vp" })

              }
              .width("99.7%")
              // .height("105.66vp")
              .offset({ x: "0.46vp", y: "-292.54vp" })
              .margin(20)
              Stack(){
                Text("用户名：\n个人信息：\n")
                  .width("262.68vp")
                  .height("43.79vp")
                  .fontSize("20fp")


              }
              .width("99.7%")
              // .height("105.66vp")
              .offset({ x: "0.46vp", y: "-260vp" })
              .margin(20)
              Stack() {

                Stack() {
                  Row() {
                    Image($r('app.media.exit'))
                      .width("40.68vp")
                      .height("40.79vp")
                    Text("  退出登录")
                      .width("262.68vp")
                      .height("43.79vp")
                      .fontSize("20fp")
                  }

                }
                // .backgroundColor("#a0d9f6")
                .width("90%")
                .height("62.73vp")
                .offset({ x: "-10vp", y: "70vp" })
                .onClick(() => {
                  router.replaceUrl({
                    url: "pages/login"
                    // this.paramsFromIndex?.['name']
                  })

                })

              }
              .width("99.4%")
              .height("465.88vp")
              .offset({ x: "0.92vp", y: "-286.87vp" })
            }
            .width("100%")
            .height("100%")
            .offset({ x: "0vp", y: "311.31vp" })
            .justifyContent(FlexAlign.Center)
          }

          .tabBar({ icon: $r('app.media.personal'), text: "个人中心" })
        }
        .width("100%")
        .height("100%")
        .offset({ x: "0vp", y: "0vp" })
      }
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .backgroundImage($r('app.media.welcome2'))
    .backgroundImageSize(ImageSize.Cover)
    }
}