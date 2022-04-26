//
//  CarView.swift
//  3DCarView
//
//  Created by apple on 23.04.2022.
//

import SwiftUI
import SceneKit

struct CarView: View {
    
    @State var index = 0
    @State var rotation = 0.0
    @State var descriptionOrChar = true
    @State var opacityDescription = 1.0
    
    var car = Models().model
    
    var body: some View {
        
        Text(car[index].modelName.uppercased())
            .font(.system(size: 30, weight: .semibold, design: .rounded))
        Image(car[index].logo)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 60)
        
        SceneView(scene: SCNScene(named: car[index].name),options: [.autoenablesDefaultLighting,.allowsCameraControl])
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            Spacer()
        ZStack{
            HStack{
                Button(action: {
                    withAnimation{
                        if index > 0 {
                            index -= 1
                        }
                    }
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .opacity(index == 0 ? 0.3 : 1)
                    
                })
                .padding()
                .disabled(index == 0 ? true : false)
                
                Spacer()
                Text(descriptionOrChar ? car[index].description : car[index].characteristics)
                    .font(.system(size: 14, weight: .light, design: .rounded))
                    .rotation3DEffect(Angle(degrees: rotation), axis: (x: CGFloat(90),y: CGFloat(0),z: CGFloat(0)))
                    .onTapGesture {
                        withAnimation{
                            self.rotation += 360
                            self.descriptionOrChar.toggle()
                        }
                    }
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        if index < car.count {
                            index += 1
                        }
                    }
                }, label: {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .opacity(index == car.count - 1 ? 0.3 : 1)
                    
                })
                .padding()
                .disabled(index == car.count - 1 ? true : false)
                
            }
        }
        
        
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}
