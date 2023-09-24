//
//  ModelView.swift
//  hak_22.09
//
//  Created by Александр Алексеев on 22.09.2023.
//

import SwiftUI


struct ImageView : View{
    var body: some View {
        VStack{
            ZStack{
                Color.white
                
                VStack{
                    AsyncImage(url: URL(string: "https://alexbobr.ru/getimage/"), content: {
                        image in
                        image.resizable().scaledToFit()
                        
                        
                    }, placeholder: {
                        ProgressView()
                    }).frame(width: 393, height: 412)
                    
                    
                    Capsule().foregroundColor(Constants.Primary3).frame(width: 350, height: 1)
                    
                    HStack{
                        Text("Цвет: серый")
                            .font(Font.custom("SB Sans Text", size: 14))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 10).padding(.leading, 20)
                     Spacer()
                    }
                    
                    Capsule().foregroundColor(Constants.Primary3).frame(width: 350, height: 1).padding(.top, 10)
                    
                    HStack{
                    Text("Вес: 27 грамм")
                        .font(Font.custom("SB Sans Text", size: 14))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 10).padding(.leading, 20)
                        Spacer()
                       }
                    
                    Capsule().foregroundColor(Constants.Primary3).frame(width: 350, height: 1).padding(.top, 10)
                    
                        HStack{
                    Text("ID: 564466")
                        .font(Font.custom("SB Sans Text", size: 14))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 10).padding(.leading, 20)
                            Spacer()
                           }
                    
                    Capsule().foregroundColor(Constants.Primary3).frame(width: 350, height: 1).padding(.top, 10)
                    
                    HStack(alignment: .center, spacing: 10) {
                        
                        Text("Отметить в ERP")
                            .font(
                                Font.custom("DM Sans", size: 14)
                                    .weight(.medium)
                            )
                            .foregroundColor(Constants.Neutral5)
                    }.frame(width: 283, height: 44)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 12)
                    .background(Constants.Primary1)
                    .cornerRadius(10)
                    
                }
                
            }
        }
        
    }
}


struct Constants {
    static let Neutral4: Color = Color(red: 0.93, green: 0.93, blue: 0.93)
    static let Neutral1: Color = Color(red: 0.07, green: 0.07, blue: 0.07)
    static let Primary2: Color = Color(red: 0.87, green: 0.88, blue: 1)
    static let Neutral5: Color = .white
    static let Primary1: Color = Color(red: 0.38, green: 0.18, blue: 0.97)
    static let Primary3: Color = Color(red: 246/255, green: 247/255, blue: 253/255)

}


struct ModelView: View {
    @State private var isShowingModel = false
    
    @State private var isShowingCamera = false
    @State private var isShowingImage = false
    
    @State private var image: UIImage?
    
    
    var body: some View {
        ZStack{
            Constants.Primary3.ignoresSafeArea()
            
            VStack{
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 393, height: 138)
                            .background(.white)
                            .cornerRadius(30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .inset(by: 0.25)
                                    .stroke(Constants.Neutral4, lineWidth: 0.5)
                            )
                        
                        VStack{
                            // 14/Bold
                            HStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 46, height: 46)
                                    .background(
                                        Image("peeps-avatar-alpha (6) 2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 46, height: 36)
                                            .clipped()
                                    )
                                    .background(Constants.Primary2)
                                    .cornerRadius(100).padding(.leading, 30)
                                VStack{
                                    Text("Алексеев Александр")
                                        .font(
                                            Font.custom("DM Sans", size: 14)
                                                .weight(.bold)
                                        )
                                        .foregroundColor(Constants.Neutral1)
                                        .frame(width: 163, alignment: .topLeading)
                                    
                                    Text("KOBLIK Group")
                                        .font(Font.custom("DM Sans", size: 10))
                                        .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                                        .frame(width: 131, height: 15, alignment: .topLeading).padding(.trailing, 30)
                                }
                                
                                Spacer()
                                
                                Image("Settings").resizable()
                                    .frame(width: 32, height: 32)
                                    .background(Constants.Neutral5)
                                    .overlay(
                                        Rectangle()
                                            .stroke(Constants.Neutral4, lineWidth: 0.5).cornerRadius(20)
                                    ).padding(.trailing, 40)
                            }
                            
                        }.padding(.top, 50)
                    }.ignoresSafeArea()
                    
                    
                    
                }
                ZStack{
                    
                    ScrollView{
                        HStack{
                            VStack{
                                Text("Помощник по ")
                                    .font(
                                        Font.custom("DM Sans", size: 18)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(Constants.Primary1).padding(.trailing, 90)
                                
                                
                                Text("распознаванию деталей")
                                    .font(
                                        Font.custom("DM Sans", size: 18)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(Constants.Primary1)
                                
                            }.padding(.leading, 30)
                            Spacer()
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 375, height: 270)
                                .background(.white)
                                .cornerRadius(20)
                            VStack{
                                
                                Text("Сканировать детали деталей в реальном времени")
                                    .font(
                                        Font.custom("DM Sans", size: 14)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(Constants.Neutral1)
                                    .frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading, 40)
                                Text("Вы можете сканировать детали и получать информацию о них в формате реального времени с задержкой в доли секунд")
                                    .font(Font.custom("DM Sans", size: 10))
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(.top, 10)
                                    .frame(width: 296, height: 54, alignment: .topLeading).padding(.bottom, 20).padding(.trailing, 50)
                                Text("Настроить используемую модель")
                                    .font(Font.custom("DM Sans", size: 10))
                                    .foregroundColor(.black).padding(.trailing, 190)
                                Menu {
                                    Button {
                                        
                                    } label: {
                                        Text("Mini модель (более быстрая, менее точная)")
                                    }
                                    Button {
                                        
                                    } label: {
                                        Text("Large модель (более быстрая, менее точная)")
                                    }
                                    
                                } label: {
                                    ZStack{
                                        
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 353, height: 29)
                                            .background(.white)
                                            .cornerRadius(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .inset(by: 0.3)
                                                    .stroke(Constants.Neutral4, lineWidth: 0.6)
                                            )
                                        Text("Выберите модель для использования")
                                            .font(
                                                Font.custom("Manrope", size: 10)
                                                    .weight(.light)
                                            )
                                            .foregroundColor(Color(red: 0.71, green: 0.71, blue: 0.71))
                                    }
                                    
                                }
                                
                                
                                
                                
                                Button {
                                    
                                } label: {
                                    HStack(alignment: .center, spacing: 10) { // 14/Medium
                                        Text("Сканировать")
                                            .font(
                                                Font.custom("DM Sans", size: 14)
                                                    .weight(.medium)
                                            )
                                        .foregroundColor(Constants.Neutral5) }
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 12)
                                    .frame(width: 339, alignment: .center)
                                    .background(Constants.Primary1)
                                    .cornerRadius(10)
                                }.padding(.top, 50)
                                
                            }
                            
                            
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 375, height: 200)
                                .background(.white)
                                .cornerRadius(20)
                            
                            VStack{
                                
                                Text("Определить модель по загруженному фото")
                                    .font(
                                        Font.custom("DM Sans", size: 14)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(Constants.Neutral1)
                                    .frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading, 40)
                                Text("Вы можете загрузить фото или сделать его и по вашему фото будет установлена модель, выведены технические характеристики и сможете занести ее в систему")
                                    .font(Font.custom("DM Sans", size: 10))
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(.top, 10)
                                    .frame(width: 296, height: 54, alignment: .topLeading).padding(.bottom, 20).padding(.trailing, 50)
                                
                                
                                Button {
                                    self.isShowingCamera.toggle()
                                    self.isShowingModel = false
                                } label: {
                                    HStack(alignment: .center, spacing: 10) { // 14/Medium
                                        Text("Сделать фото")
                                            .font(
                                                Font.custom("DM Sans", size: 14)
                                                    .weight(.medium)
                                            )
                                        .foregroundColor(Constants.Neutral5) }
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 12)
                                    .frame(width: 339, alignment: .center)
                                    .background(Constants.Primary1)
                                    .cornerRadius(10)
                                }.padding(.top, 30).sheet(isPresented: $isShowingCamera) {
                                    
                                    CameraView(isShown: self.$isShowingCamera, image: self.$image).onDisappear {
                                        let data = self.image?.jpegData(compressionQuality: 0.1)
                                        
                                        Api.shared.send(imageData: data ?? Data()) { val in
                                            DispatchQueue.main.async {
                                                
                                                self.isShowingImage = true
                                                self.isShowingModel = true
                                            }
                                        }
                                    }
                                    
                                }.sheet(isPresented: $isShowingImage) {
                                    
                                    ImageView().onDisappear {
                                        self.isShowingImage = false
                                    }
                                }
                                
                            }
                            
                        }
                    }
                }
            }
            
        }
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView()
    }
}
