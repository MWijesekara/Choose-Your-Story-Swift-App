//
//  StoryPageView.swift
//  Choose Your Story
//
//  Created by Menura Wijesekara on 2024-01-16.
//

import SwiftUI

struct StoryPageView: View {
    
    let story : Story
    let pageIndex : Int
    
    var body: some View {
        VStack{
            ScrollView{
                Text(story[pageIndex].text)
            }
            
            ForEach(story[pageIndex].choices, id: \Choice.text)
            { choice in
                //NavigationLink is used to navigate through the pages it requires the destination here.
                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)){
                    Text(choice.text)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth:.infinity, alignment: .leading )
                        .padding()
                        .background(Color.gray.opacity(0.25))
                }       .cornerRadius(8)
            }
        }.padding()
            .navigationTitle("Page \(pageIndex + 1)")// applies only when wrapped using a navigation stack
            .navigationBarTitleDisplayMode(.inline)// applies only when wrapped using a navigation stack
    }
}

#Preview {
    StoryPageView(story: story, pageIndex: 0)
}
