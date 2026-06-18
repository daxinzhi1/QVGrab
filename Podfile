use_frameworks!

platform :ios, '12.0'

# =========================
# 🔥 核心稳定依赖（全部远程）
# =========================
def pods_core
  pod "GCDWebServer", '3.5.4'
  pod "GCDWebServer/WebDAV", '3.5.4'
  pod "GCDWebServer/WebUploader", '3.5.4'

  pod "MBProgressHUD", '1.2.0'
  pod "FMDB", '2.7.12'
  pod "KVOController", '1.2.0'
  pod "AFNetworking", '4.0.1'
  pod "SnapKit", '5.7.1'
  pod "Kingfisher", '7.12.0'
end

# =========================
# 🟡 本地开发模块（保留，但隔离）
# =========================
def pods_local
  pod "FileBrowse", :path => './PodsD/FileBrowse'
  pod "M3U8", :path => './PodsD/M3U8'
  pod "JSScript", :path => './PodsD/JSScript'
  pod "LithUI", :path => './PodsD/LithUI'
  pod "Chouye", :path => './PodsD/Chouye'
end

target 'QVGrab' do
  pods_core
  pods_local
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'

      # 🔥 关键稳定修复（CI必须）
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      config.build_settings['CODE_SIGNING_REQUIRED'] = 'NO'
    end
  end
end