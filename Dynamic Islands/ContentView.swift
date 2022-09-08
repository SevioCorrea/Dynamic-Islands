//
//  ContentView.swift
//  Dynamic Islands
//
//  Created by Sévio on 08/09/22.
//

import SwiftUI

struct DynamicIslands: View {
    var body: some View {
        VStack {
            HStack {
                Text("Charging")
                    .font(Font.system(.body, design: .default).weight(.semibold))
                    .foregroundColor(Color.white)
                    .padding(.leading, 4)
                Spacer()
                Text("75%")
                    .font(Font.system(.body, design: .default).weight(.semibold))
                    .foregroundColor(Color.green)
                    .padding(.leading, 4)
                HStack(spacing: 2) {
                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.mint]), startPoint: .trailing, endPoint: .leading)
                        .frame(width: 30, height: 20)
                        .clipped()
                        .padding(.trailing, 10)
                        .background(Color.green.opacity(0.5))
                        .mask(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    Rectangle()
                        .fill(Color.green.opacity(0.5))
                        .frame(width: 4, height: 8)
                        .clipped()
                        .cornerRadius(4)
                }
            }
            .padding(.all, 15)
            .background(Capsule(style: .continuous)
                .fill(Color.black), alignment: .center)
            HStack {
                Capsule(style: .continuous)
                    .foregroundColor(Color.red)
                    .frame(width: 70, height: 35)
                    .clipped()
                    .overlay(Image(systemName: "bell.slash.fill")
                        .imageScale(.large)
                        .foregroundColor(Color.white), alignment: .center)
                Spacer()
                Text("Silent")
                    .foregroundColor(Color.red)
                    .padding(.trailing, 6)
                    .font(Font.system(.headline, design: .default).weight(.regular))
            }
            .padding(.all, 10)
            .background(Capsule(style: .continuous)
                .fill(Color.black), alignment: .center)
            HStack {
                Image("Image 1")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .mask(Circle())
                VStack(alignment: .leading) {
                    Text("mobile")
                        .foregroundColor(Color.white.opacity(0.5))
                        .font(.footnote)
                    Text("Olivia Rodrigo")
                        .foregroundColor(Color.white)
                        .font(Font.system(.body, design: .default).weight(.medium))
                }
                .padding(.top, 3)
                Spacer()
                Circle()
                    .fill(Color.red)
                    .frame(width: 40, height: 50)
                    .clipped()
                    .overlay(Image(systemName: "phone.down.fill")
                        .imageScale(.large)
                        .foregroundColor(Color.white), alignment: .center)
                Circle()
                    .fill(Color.green)
                    .frame(width: 40, height: 50)
                    .clipped()
                    .overlay(Image(systemName: "phone.fill")
                        .imageScale(.large)
                        .foregroundColor(Color.white), alignment: .center)
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Capsule(style: .continuous)
                .fill(Color.black), alignment: .center)
            VStack(spacing: 10) {
                HStack {
                    Image("Image 2")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 48, height: 48)
                        .clipped()
                        .mask(RoundedRectangle(cornerRadius: 6, style: .continuous))
                    VStack(alignment: .leading) {
                        Text("Levitating")
                            .foregroundColor(Color.white)
                            .font(Font.system(.subheadline, design: .default).weight(.medium))
                        Text("Dua Lipa")
                            .foregroundColor(Color.white.opacity(0.5))
                            .font(.subheadline)
                    }
                    .padding(.top, 3)
                    Spacer()
                }
                HStack {
                    Text("2:50")
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.white.opacity(0.33))
                        .frame(height: 4)
                        .clipped()
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color.white)
                            .frame(height: 4)
                            .clipped()
                            .padding(.trailing, 80), alignment: .center)
                    Text("-0:51")
                }
                .foregroundColor(Color.white.opacity(0.75))
                .font(.caption2)
                HStack {
                    Image(systemName: "airplayaudio")
                        .imageScale(.small)
                        .opacity(0)
                    Spacer()
                    HStack {
                        Image(systemName: "backward.fill")
                        Spacer()
                        Image(systemName: "pause.fill")
                            .font(.title)
                        Spacer()
                        Image(systemName: "forward.fill")
                    }
                    .frame(width: 160)
                    .clipped()
                    Spacer()
                    Image(systemName: "airplayaudio")
                        .imageScale(.small)
                }
                .foregroundColor(Color.white)
                .padding(.vertical, 5)
                .font(.title3)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(Color.black), alignment: .center)
        }
        .frame(width: 350)
        .clipped()
    }
}

struct MyDesign_Previews: PreviewProvider {
    static var previews: some View {
        DynamicIslands()
    }
}
