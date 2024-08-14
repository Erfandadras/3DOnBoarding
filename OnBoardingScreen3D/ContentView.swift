//
//  ContentView.swift
//  OnBoardingScreen3D
//
//  Created by Erfan mac mini on 8/14/24.

//  Instagram :
//  MARK: @Erfan__Dadras

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct MainView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .systemPink
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.8)
    }
    
    @State var selectedPage = 0
    var body: some View {
        
        // Main Stack
        
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.pink, .red]), center: .center, startRadius: 2, endRadius: 650).opacity(0.6).edgesIgnoringSafeArea(.all)
            
            Circle()
                .foregroundColor(Color("dkpink").opacity(0.2))
            
                .offset(x: -150, y: -300)
            
            
            Circle()
                .foregroundColor(Color("dkpink").opacity(0.2))
                .offset(x: 150, y: 300)
            
            
            VStack{
                ZStack{
                    TabView(selection: $selectedPage)
                    {
                        ForEach(0..<testData.count){
                            index in CardView(card : testData[index]).tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    
                }
                
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 270, height: 75)
                            .foregroundColor(Color("dkpink").opacity(0.5))
                            .overlay {
                                RoundedRectangle(cornerRadius: 10).stroke(.white, lineWidth: 2)
                            }
                        
                        
                        Text("L O G I N")
                            .fontWeight(.bold)
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 1, x: 1, y: 1)
                        
                    }
                    
                    Button(action : {
                        if selectedPage < 3 {
                            selectedPage += 1
                        } else {
                            selectedPage = 0
                        }
                    })
                    {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color("dkpink").opacity(0.5))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10).stroke(.white, lineWidth: 2)
                                }
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 22, height: 30)
                            
                        }
                        
                    }
                }
            }
            
            if (selectedPage == 0){
                Shadow3D(imgName: "heart", shadowanim: false, rotateanim: false, shadowscale: false)
                    .offset(x: 0, y: -150)
                
            }
            if (selectedPage == 1){
                Shadow3D(imgName: "bubble.middle.bottom", shadowanim: false, rotateanim: false, shadowscale: false)
                    .offset(x: 0, y: -150)
                
            }
            if (selectedPage == 2){
                Shadow3D(imgName: "arrowshape.turn.up.right", shadowanim: false, rotateanim: false, shadowscale: false)
                    .offset(x: 0, y: -150)
                
            }
            
            if (selectedPage == 3){
                Shadow3D(imgName: "person", shadowanim: false, rotateanim: false, shadowscale: false)
                    .offset(x: 0, y: -150)
                
            }
        }
        
    }
}
//
//
