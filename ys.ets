import router from '@ohos.router';
@Entry
@Component
struct Ys {
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
              Image($r('app.media.ys1'))
                .width("50%")
                .height("100%")
              Text("   芦笋鸡肉随行杯\n原料：鸡小胸肉、红薯、鸡蛋、番茄、芦笋、胭脂番石榴、油、盐、黑胡椒。")
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
              Image($r('app.media.ys2'))
                .width("50%")
                .height("100%")
              Text("        莲藕排骨汤\n原料：排骨、莲藕、胡萝卜、黑木耳、生姜、葱绿、料酒、食盐")
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
              Image($r('app.media.ys3'))
                .width("50%")
                .height("100%")
                .objectFit(ImageFit.Fill)
              Text("      养生南瓜饮\n原料：黄豆、南瓜、花生仁、玉米渣、清水")
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
              Image($r('app.media.ys4'))
                .width("50%")
                .height("100%")
              Text("         蓝莓山药\n原料：山药、蓝莓酱、冰糖、牛奶、炼乳。")
                .width("50%")
                .height("100%")
                .fontSize("20fp")
            }            
            .width("100%")
            .height("100%")
          }          
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