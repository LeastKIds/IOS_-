//
//  Coordinator.swift
//  0012_CameraApp
//
//  Created by 김진홍 on 2022/11/15.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var parrent: ImagePicker
    
    init(_ parrent: ImagePicker) {
        self.parrent = parrent
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.originalImage] as! UIImage
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    }
}
