public final class AssemblyFactory: CameraAssemblyFactory, MediaPickerAssemblyFactory, ImageCroppingAssemblyFactory, PhotoLibraryAssemblyFactory, RoundedImageCroppingAssemblyFactory {
    
    private let theme: MediaPickerUITheme
    
    public init(theme: MediaPickerUITheme = MediaPickerUITheme()) {
        self.theme = theme
    }
    
    func cameraAssembly() -> CameraAssembly {
        return CameraAssemblyImpl(theme: theme)
    }
    
    public func mediaPickerAssembly() -> MediaPickerAssembly {
        return MediaPickerAssemblyImpl(assemblyFactory: self, theme: theme)
    }

    func imageCroppingAssembly() -> ImageCroppingAssembly {
        return ImageCroppingAssemblyImpl(theme: theme)
    }

    public func photoLibraryAssembly() -> PhotoLibraryAssembly {
        return PhotoLibraryAssemblyImpl(theme: theme)
    }
    
    public func roundedImageCroppingAssembly() -> RoundedImageCroppingAssembly {
        return RoundedImageCroppingAssemblyImpl()
    }
}
