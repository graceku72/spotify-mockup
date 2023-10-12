//
//  ContentView.swift
//  mp02
//
//  Created by Grace Ku on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 50
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .yellow]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Spacer()
                HStack {
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("My Love Is Cool")
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .padding()
                }
                Image("my_love_is_cool")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .padding()
                    .padding(.bottom, -20)
                VStack(alignment: .leading, content: {
                    HStack {
                        Text("Soapy Water")
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .bold()
                            .padding()
                        Spacer()
                        Image(systemName: "heart.fill")
                            .foregroundColor(.green)
                            .font(.title)
                            .padding()
                    }
                    .padding(.bottom, -30)
                    Text("Wolf Alice")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                })
                Slider(value: $sliderValue, in: -100...100)
                    .accentColor(.white)
                    .padding()
                    .padding(.bottom, -40)
                HStack {
                    Text("2:46")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("0:56")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(.bottom, -10)
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "pause.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(.bottom, -10)
                HStack {
                    Image(systemName: "headphones")
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.white)
                        .font(.headline)
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.leading, 8)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
