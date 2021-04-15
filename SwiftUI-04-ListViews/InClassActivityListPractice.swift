//
//  InClassActivityListPractice.swift
//  SwiftUI-04-ListViews
//
//  Created by Arica Conrad on 4/14/21.
//

import SwiftUI

struct PhoneTutorials: Identifiable {
    // These are the variables I need to store
    // the icon and the title for the buttons.
    let id = UUID()
    let icon: String
    let tutorialTitle: String
}

struct TutorialRow: View {
    // This is the specific tutorial in the list.
    let whichTutorial: PhoneTutorials
    
    var body: some View {
        // This defines what the button will look
        // like.
        // NOTE: These buttons do not work!
        Button() {
            // I just needed something to put here.
            print(whichTutorial.tutorialTitle + " button pressed!")
        }
        label: {
            HStack {
                // The button first displays an
                // icon and then the title of the
                // tutorial.
                Image(systemName: whichTutorial.icon)
                Text((whichTutorial.tutorialTitle))
                    .font(.title2)
            }
            // This makes the buttons look like our
            // high-fidelity prototype.
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
            .foregroundColor(.black)
            .padding(10)
        }
    }
}

struct InClassActivityListPractice: View {
    
    // This defines the name of each tutorial with
    // their specific icon.
    let tutorialList = [
        PhoneTutorials(icon: "person", tutorialTitle: "Contact List"),
        PhoneTutorials(icon: "phone", tutorialTitle: "Calling"),
        PhoneTutorials(icon: "bubble.left", tutorialTitle: "Texting"),
        PhoneTutorials(icon: "camera", tutorialTitle: "Camera"),
        PhoneTutorials(icon: "photo", tutorialTitle: "Photos"),
        PhoneTutorials(icon: "gear",
            tutorialTitle: "Settings"),
        PhoneTutorials(icon: "bell", tutorialTitle: "Notifications")
    ]
    
    var body: some View {
        // This is what the screen will display
        // and in which order.
        VStack {
            // First, the title at the top will
            // tell the user that this is the
            // "Phone Features" screen, the screen
            // that will display tutorials that
            // fall under this category.
            Text("Phone Features")
                .font(.largeTitle)
                .fontWeight(.regular)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.black)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color("DarkGreen")/*@END_MENU_TOKEN@*/, width: 2)
                .background(Color("LightGreen"))
                .padding()
            
            // Then, some instructional text will
            // be shown to tell the reader that
            // they can tap on these buttons to
            // go to that specific tutorial screen.
            // NOTE: These buttons do not work!
            Text("Tap a button below to learn more about that tutorial.")
                .font(.title3)
                .multilineTextAlignment(.leading)
            
            // Then, the screen will be populated
            // with the list of tutorials as
            // defined above.
            // I did the more concise code version
            // to display the list, as I understand
            // this one more.
            List(tutorialList, rowContent: TutorialRow.init)
        }
    }
}

struct InClassActivityListPractice_Previews: PreviewProvider {
    static var previews: some View {
        InClassActivityListPractice()
    }
}
