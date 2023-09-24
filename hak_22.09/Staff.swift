//
//  Staff.swift
//  hak_22.09
//
//  Created by Александр Алексеев on 23.09.2023.
//

import SwiftUI


//                                Button {
//                                    let data = image?.jpegData(compressionQuality: 0.1)
//
//                                    Api.shared.send(imageData: data ?? Data()) { val in
//                                        DispatchQueue.main.async {
//                                            self.isShowingModel = true
//                                        }
//                                    }
//                                } label: {
//                                    HStack(alignment: .center, spacing: 10) { // 14/Medium
//                                        Text("Распознать")
//                                            .font(
//                                                Font.custom("DM Sans", size: 14)
//                                                    .weight(.medium)
//                                            )
//                                        .foregroundColor(Constants.Neutral5) }
//                                    .padding(.horizontal, 10)
//                                    .padding(.vertical, 12)
//                                    .frame(width: 339, alignment: .center)
//                                    .background(Constants.Primary1)
//                                    .cornerRadius(10)
//                                }.padding(.top, 10)

//}
//}

//  if let image = image {

//                            ZStack{
//                                if isShowingModel{
//
//                                    AsyncImage(url: URL(string: "https://alexbobr.ru/getimage/"), content: {
//                                                        image in
//                                                        image.resizable().scaledToFit()
//
//
//                                                    }, placeholder: {
//                                                        ProgressView()
//                                                    }).frame(width: 400, height: 400)
//
//                                }else{
//                                    Image(uiImage: image)
//                                        .resizable()
//                                        .scaledToFit().frame(width: 400, height: 400)
//                                }
//
//                            }
//                            .onAppear {
//                                let data = self.image?.jpegData(compressionQuality: 0.1)
//
//                                Api.shared.send(imageData: data ?? Data()) { val in
//                                    DispatchQueue.main.async {
//
//                                        self.isShowingModel = true
//                                    }
//                                }
//                           }


//                        }
//                        } else {
//                            //Text("No image selected")
//                        }




//struct CamView: View {
//
//    @State private var isShowingModel = false
//
//    @State private var isShowingCamera = false
//    @State private var image: UIImage?
//
//    var body: some View {
//        VStack {
//
////
////            AsyncImage(url: URL(string: "https://alexbobr.ru/getimage/"), content: {
////                                image in
////                                image.resizable().scaledToFit()
////
////
////                            }, placeholder: {
////                                ProgressView()
////                        }).frame(width: 300, height: 300, alignment: .leading)
//
//            if let image = image {
//
//                ZStack{
//                    if isShowingModel{
////                        AsyncImage(url: URL(string: "https://alexbobr.ru/getimage/")!).scaledToFit()
//
//                        AsyncImage(url: URL(string: "https://alexbobr.ru/getimage/"), content: {
//                                            image in
//                                            image.resizable().scaledToFit()
//
//
//                                        }, placeholder: {
//                                            ProgressView()
//                                    }).frame(width: 300, height: 300, alignment: .leading)
//
//                    }else{
//                        Image(uiImage: image)
//                            .resizable()
//                            .scaledToFit()
//                    }
//                    //Text("image selected").padding(.top, 50)
//                }
//            } else {
//                Text("No image selected")
//            }
//
//            Button("Take photo") {
//                self.isShowingCamera.toggle()
//                self.isShowingModel = false
//            }
//            .sheet(isPresented: $isShowingCamera) {
//               // VStack{
//                    CameraView(isShown: self.$isShowingCamera, image: self.$image)
//                    //FieldView(image: self.$image)
//                //}
//            }
//
//
//            Button {
//                let data = image?.jpegData(compressionQuality: 0.1)
//
//                Api.shared.send(imageData: data ?? Data()) { val in
//                    DispatchQueue.main.async {
//                        self.isShowingModel = true
//                    }
//                }
//
//
//
//            } label: {
//                ZStack{
//                    RoundedRectangle(cornerRadius: 15).frame(width: 100, height: 50)
//                    Text("model").foregroundColor(.red)
//                }.padding(.top, 50)
//
//            }
//
//
//        }.onAppear {
//
//        }
//    }
//
//
//}
//
//
//
//struct CameraView_Previews: PreviewProvider {
//    static var previews: some View {
//        CamView()
//    }
//}
//
//struct Staff: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct Staff_Previews: PreviewProvider {
//    static var previews: some View {
//        Staff()
//    }
//}
