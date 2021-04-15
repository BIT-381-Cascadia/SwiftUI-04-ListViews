//
//  techEaseTutorialList.swift
//  SwiftUI-04-ListViews
//
//  Created by Natalman Nahm on 4/14/21.
//

import SwiftUI

struct Tutorial: Identifiable{
    let id = UUID()
    let TutorialName: String
    let Icon: String
}

struct viewTutorial: View {
    let tutorialDisplay: Tutorial
    
    var body: some View{
        Button(action:{ }) {
            HStack{
                Image(systemName: tutorialDisplay.Icon)
                    .resizable()
                    .frame(width:32, height: 32)
                Text(tutorialDisplay.TutorialName)
                    .padding(.leading, 28.0)
                Spacer()
            }
            .padding(.leading, 42.0)
        }
        .padding([.top, .leading, .trailing], 28.0)
            .buttonStyle(RoundedButton())
    }
}

struct techEaseTutorialList: View {
    
    let TutorialList = [
        Tutorial(TutorialName: "Contact List", Icon: "person.3"),
        Tutorial(TutorialName: "Calling", Icon:"phone"),
        Tutorial(TutorialName: "Photo", Icon:"photo"),
        Tutorial(TutorialName: "Texting", Icon:"text.bubble"),
        Tutorial(TutorialName: "Camera", Icon:"camera")
        
    ]
    
    
    var body: some View {
        VStack{
            Text("Tap a button to learn more about the tutorial")
                .padding(.top, 24.0)
            
            List(TutorialList) { aTutorial in
                viewTutorial(tutorialDisplay: aTutorial)
            }
            
        }
    }
}

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration
            .label
            .font(.system(size: 24.0))
            .foregroundColor(.black)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 72)
            .background(Color(red: 177/255, green: 255/255, blue: 156/255))
            .overlay(
                RoundedRectangle(cornerRadius: 5) .stroke(Color.black, lineWidth: 3.5))
    }
    
}

struct techEaseTutorialList_Previews: PreviewProvider {
    static var previews: some View {
        techEaseTutorialList()
    }
}
