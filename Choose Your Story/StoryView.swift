//
//  StoryView.swift
//  Choose Your Story
//
//  Created by Menura Wijesekara on 2024-01-16.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationStack{
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

#Preview {
    StoryView()
}
