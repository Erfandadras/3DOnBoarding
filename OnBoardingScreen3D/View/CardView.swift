//
//  CardView.swift
//  OnBoardingScreen3D
//
//  Created by Erfan mac mini on 8/14/24.
//

import SwiftUI

struct CardView: View {
    
    var card : Card
    var body: some View {
        VStack(spacing: 32) {
            Spacer()
            Text(card.title)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 1, x: 1, y: 1)
               
            
            Text(card.description)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .font(.system(size: 32))
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 1, x: 1, y: 1)
                .padding(5)
        
        }.padding(.horizontal)
            .padding(.bottom, 70)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: testData[1])
    }
}
