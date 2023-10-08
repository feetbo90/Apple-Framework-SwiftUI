//
//  FrameWorkGridView.swift
//  Apple-Framework
//
//  Created by Muhammad Iqbal Pradipta on 10/6/23.
//

import SwiftUI

struct FrameWorkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) {
                    framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }.accentColor(Color(.label))
    }
}

struct PreviewGridView: PreviewProvider {
    static var previews: some View {
        FrameWorkGridView().preferredColorScheme(.dark)
    }
}
