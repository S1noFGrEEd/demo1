import router from '@ohos.router'
import prompt from '@ohos.prompt'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct LoginPage {
  @State password: string = ''
  @State username: string = ''

  build() {

    Column() {
      Text("登陆")
        .fontSize(50)
        .fontWeight(FontWeight.Bold).margin({
        bottom: 60
      })
      Row() {
        Text("用户名")
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
      }.width("100%")

      Row() {
        Image($r("app.media.icon")).width(30)

        TextInput({
          placeholder: "请输入用户名"
        }).width(200).onChange((val: string) => {
          this.username = val


        })
      }.margin({
        bottom: 8,
        top: 8
      }).width("100%")

      Divider().strokeWidth(4)

      Row() {
        Text("密码")
          .fontSize(18)
          .fontWeight(FontWeight.Bold).margin({
          bottom: 8,
          top: 8
        })
      }.width("100%")

      Row() {
        Image($r("app.media.icon")).width(30)

        TextInput({
          placeholder: "请输入密码"
        }).width(200).onChange((val: string) => {
          this.password = val


        }).type(InputType.Password)
      }.width("100%")

      Divider().strokeWidth(4)
      Row() {
        Blank()
        Text("忘记密码？")
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
      }.width("100%")

      Button("登陆").width("90%").height(60).backgroundColor(Color.Orange).onClick(() => {

        if (this.username == "admin" && this.password == "admin") {

          router.pushUrl({
            url: "pages/MainPage"
          })
        }
        else {
          promptAction.showToast({
            message:"密码或用户名错误，请重新输入"
          })
        }
      })


      Text("立即注册")
        .fontSize(18).margin({
        top: 20,
      })

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .padding({
      left: 20,
      right: 20
    })
  }
}