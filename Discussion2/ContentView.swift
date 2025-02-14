//
//  ContentView.swift
//  Discussion2
//


import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea(edges: .all)
            VStack {
                extraView()
                albumView()
                titleView()
                timeView()
                playbackView()
            }
        }
    }
     
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct titleView: View {
    var body: some View {
        Text("Customize")
    }
}

struct timeView: View {
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Circle()
                        .frame(height:10)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                Rectangle()
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .frame(height: 5)
                    .foregroundColor(.white)
                    .opacity(0.3)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            
            HStack {
                Text("0:00")
                    .opacity(0.6)
                    .foregroundColor(.white)
                Spacer()
                Text("-2:53")
                    .opacity(0.6)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct playbackView: View {
    var body: some View {
        Text("Customize")
    }
}


struct albumView : View {
    var body: some View {
            Image("Espresso")
            .frame(width:375, height: 375)
            .padding([.top, .bottom], 50)
    }
}

struct extraView : View {
    var body: some View {
        ZStack {
            Text("Customize")
        }
        
    }
}

#Preview {
    ContentView()
}
