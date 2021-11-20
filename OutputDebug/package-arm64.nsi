; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "WSATools"
!define PRODUCT_VERSION "1.2.2"
!define PRODUCT_PUBLISHER "michael_eddy"
!define PRODUCT_WEB_SITE "https://michael-eddy.github.io"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\WSATools.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "..\WSATools\images\icon.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\WSATools.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "WSATools-Setup-arm64.exe"
InstallDir "$PROGRAMFILES\WSATools"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  File "Publish\arm64\Accessibility.dll"
  File "Publish\arm64\adb.exe"
  CreateDirectory "$SMPROGRAMS\WSATools"
  CreateShortCut "$SMPROGRAMS\WSATools\WSATools.lnk" "$INSTDIR\WSATools.exe"
  CreateShortCut "$DESKTOP\WSATools.lnk" "$INSTDIR\WSATools.exe"
  File "Publish\arm64\AdbWinApi.dll"
  File "Publish\arm64\AdbWinUsbApi.dll"
  File "Publish\arm64\AdvancedSharpAdbClient.dll"
  File "Publish\arm64\clretwrc.dll"
  File "Publish\arm64\clrjit.dll"
  File "Publish\arm64\coreclr.dll"
  File "Publish\arm64\createdump.exe"
  File "Publish\arm64\D3DCompiler_47.dll"
  File "Publish\arm64\dbgshim.dll"
  File "Publish\arm64\DirectWriteForwarder.dll"
  File "Publish\arm64\Downloader.dll"
  File "Publish\arm64\DynamicData.dll"
  SetOutPath "$INSTDIR\en"
  File "Publish\arm64\en\HandyControl.resources.dll"
  SetOutPath "$INSTDIR"
  File "Publish\arm64\HandyControl.dll"
  File "Publish\arm64\hostfxr.dll"
  File "Publish\arm64\hostpolicy.dll"
  File "Publish\arm64\HtmlAgilityPack.dll"
  File "Publish\arm64\icon.ico"
  File "Publish\arm64\Microsoft.CSharp.dll"
  File "Publish\arm64\Microsoft.DiaSymReader.Native.arm64.dll"
  File "Publish\arm64\Microsoft.Extensions.Logging.Abstractions.dll"
  File "Publish\arm64\Microsoft.Toolkit.Mvvm.dll"
  File "Publish\arm64\Microsoft.VisualBasic.Core.dll"
  File "Publish\arm64\Microsoft.VisualBasic.dll"
  File "Publish\arm64\Microsoft.VisualBasic.Forms.dll"
  File "Publish\arm64\Microsoft.Win32.Primitives.dll"
  File "Publish\arm64\Microsoft.Win32.Registry.AccessControl.dll"
  File "Publish\arm64\Microsoft.Win32.Registry.dll"
  File "Publish\arm64\Microsoft.Win32.SystemEvents.dll"
  File "Publish\arm64\Microsoft.Windows.SDK.NET.dll"
  File "Publish\arm64\Microsoft.Xaml.Behaviors.dll"
  File "Publish\arm64\mscordaccore.dll"
  File "Publish\arm64\mscordaccore_arm64_arm64_6.0.21.52210.dll"
  File "Publish\arm64\mscordbi.dll"
  File "Publish\arm64\mscorlib.dll"
  File "Publish\arm64\mscorrc.dll"
  File "Publish\arm64\netstandard.dll"
  File "Publish\arm64\Newtonsoft.Json.dll"
  File "Publish\arm64\PenImc_cor3.dll"
  File "Publish\arm64\PresentationCore.dll"
  File "Publish\arm64\PresentationFramework-SystemCore.dll"
  File "Publish\arm64\PresentationFramework-SystemData.dll"
  File "Publish\arm64\PresentationFramework-SystemDrawing.dll"
  File "Publish\arm64\PresentationFramework-SystemXml.dll"
  File "Publish\arm64\PresentationFramework-SystemXmlLinq.dll"
  File "Publish\arm64\PresentationFramework.Aero.dll"
  File "Publish\arm64\PresentationFramework.Aero2.dll"
  File "Publish\arm64\PresentationFramework.AeroLite.dll"
  File "Publish\arm64\PresentationFramework.Classic.dll"
  File "Publish\arm64\PresentationFramework.dll"
  File "Publish\arm64\PresentationFramework.Luna.dll"
  File "Publish\arm64\PresentationFramework.Royale.dll"
  File "Publish\arm64\PresentationNative_cor3.dll"
  File "Publish\arm64\PresentationUI.dll"
  File "Publish\arm64\ReachFramework.dll"
  File "Publish\arm64\Serilog.dll"
  File "Publish\arm64\Serilog.Sinks.Async.dll"
  File "Publish\arm64\Serilog.Sinks.File.dll"
  File "Publish\arm64\System.AppContext.dll"
  File "Publish\arm64\System.Buffers.dll"
  File "Publish\arm64\System.CodeDom.dll"
  File "Publish\arm64\System.Collections.Concurrent.dll"
  File "Publish\arm64\System.Collections.dll"
  File "Publish\arm64\System.Collections.Immutable.dll"
  File "Publish\arm64\System.Collections.NonGeneric.dll"
  File "Publish\arm64\System.Collections.Specialized.dll"
  File "Publish\arm64\System.ComponentModel.Annotations.dll"
  File "Publish\arm64\System.ComponentModel.DataAnnotations.dll"
  File "Publish\arm64\System.ComponentModel.dll"
  File "Publish\arm64\System.ComponentModel.EventBasedAsync.dll"
  File "Publish\arm64\System.ComponentModel.Primitives.dll"
  File "Publish\arm64\System.ComponentModel.TypeConverter.dll"
  File "Publish\arm64\System.Configuration.ConfigurationManager.dll"
  File "Publish\arm64\System.Configuration.dll"
  File "Publish\arm64\System.Console.dll"
  File "Publish\arm64\System.Core.dll"
  File "Publish\arm64\System.Data.Common.dll"
  File "Publish\arm64\System.Data.DataSetExtensions.dll"
  File "Publish\arm64\System.Data.dll"
  File "Publish\arm64\System.Design.dll"
  File "Publish\arm64\System.Diagnostics.Contracts.dll"
  File "Publish\arm64\System.Diagnostics.Debug.dll"
  File "Publish\arm64\System.Diagnostics.DiagnosticSource.dll"
  File "Publish\arm64\System.Diagnostics.EventLog.dll"
  File "Publish\arm64\System.Diagnostics.FileVersionInfo.dll"
  File "Publish\arm64\System.Diagnostics.PerformanceCounter.dll"
  File "Publish\arm64\System.Diagnostics.Process.dll"
  File "Publish\arm64\System.Diagnostics.StackTrace.dll"
  File "Publish\arm64\System.Diagnostics.TextWriterTraceListener.dll"
  File "Publish\arm64\System.Diagnostics.Tools.dll"
  File "Publish\arm64\System.Diagnostics.TraceSource.dll"
  File "Publish\arm64\System.Diagnostics.Tracing.dll"
  File "Publish\arm64\System.DirectoryServices.dll"
  File "Publish\arm64\System.dll"
  File "Publish\arm64\System.Drawing.Common.dll"
  File "Publish\arm64\System.Drawing.Design.dll"
  File "Publish\arm64\System.Drawing.dll"
  File "Publish\arm64\System.Drawing.Primitives.dll"
  File "Publish\arm64\System.Dynamic.Runtime.dll"
  File "Publish\arm64\System.Formats.Asn1.dll"
  File "Publish\arm64\System.Globalization.Calendars.dll"
  File "Publish\arm64\System.Globalization.dll"
  File "Publish\arm64\System.Globalization.Extensions.dll"
  File "Publish\arm64\System.IO.Compression.Brotli.dll"
  File "Publish\arm64\System.IO.Compression.dll"
  File "Publish\arm64\System.IO.Compression.FileSystem.dll"
  File "Publish\arm64\System.IO.Compression.Native.dll"
  File "Publish\arm64\System.IO.Compression.ZipFile.dll"
  File "Publish\arm64\System.IO.dll"
  File "Publish\arm64\System.IO.FileSystem.AccessControl.dll"
  File "Publish\arm64\System.IO.FileSystem.dll"
  File "Publish\arm64\System.IO.FileSystem.DriveInfo.dll"
  File "Publish\arm64\System.IO.FileSystem.Primitives.dll"
  File "Publish\arm64\System.IO.FileSystem.Watcher.dll"
  File "Publish\arm64\System.IO.IsolatedStorage.dll"
  File "Publish\arm64\System.IO.MemoryMappedFiles.dll"
  File "Publish\arm64\System.IO.Packaging.dll"
  File "Publish\arm64\System.IO.Pipes.AccessControl.dll"
  File "Publish\arm64\System.IO.Pipes.dll"
  File "Publish\arm64\System.IO.UnmanagedMemoryStream.dll"
  File "Publish\arm64\System.Linq.dll"
  File "Publish\arm64\System.Linq.Expressions.dll"
  File "Publish\arm64\System.Linq.Parallel.dll"
  File "Publish\arm64\System.Linq.Queryable.dll"
  File "Publish\arm64\System.Memory.dll"
  File "Publish\arm64\System.Net.dll"
  File "Publish\arm64\System.Net.Http.dll"
  File "Publish\arm64\System.Net.Http.Json.dll"
  File "Publish\arm64\System.Net.HttpListener.dll"
  File "Publish\arm64\System.Net.Mail.dll"
  File "Publish\arm64\System.Net.NameResolution.dll"
  File "Publish\arm64\System.Net.NetworkInformation.dll"
  File "Publish\arm64\System.Net.Ping.dll"
  File "Publish\arm64\System.Net.Primitives.dll"
  File "Publish\arm64\System.Net.Quic.dll"
  File "Publish\arm64\System.Net.Requests.dll"
  File "Publish\arm64\System.Net.Security.dll"
  File "Publish\arm64\System.Net.ServicePoint.dll"
  File "Publish\arm64\System.Net.Sockets.dll"
  File "Publish\arm64\System.Net.WebClient.dll"
  File "Publish\arm64\System.Net.WebHeaderCollection.dll"
  File "Publish\arm64\System.Net.WebProxy.dll"
  File "Publish\arm64\System.Net.WebSockets.Client.dll"
  File "Publish\arm64\System.Net.WebSockets.dll"
  File "Publish\arm64\System.Numerics.dll"
  File "Publish\arm64\System.Numerics.Vectors.dll"
  File "Publish\arm64\System.ObjectModel.dll"
  File "Publish\arm64\System.Printing.dll"
  File "Publish\arm64\System.Private.CoreLib.dll"
  File "Publish\arm64\System.Private.DataContractSerialization.dll"
  File "Publish\arm64\System.Private.Uri.dll"
  File "Publish\arm64\System.Private.Xml.dll"
  File "Publish\arm64\System.Private.Xml.Linq.dll"
  File "Publish\arm64\System.Reactive.dll"
  File "Publish\arm64\System.Reflection.DispatchProxy.dll"
  File "Publish\arm64\System.Reflection.dll"
  File "Publish\arm64\System.Reflection.Emit.dll"
  File "Publish\arm64\System.Reflection.Emit.ILGeneration.dll"
  File "Publish\arm64\System.Reflection.Emit.Lightweight.dll"
  File "Publish\arm64\System.Reflection.Extensions.dll"
  File "Publish\arm64\System.Reflection.Metadata.dll"
  File "Publish\arm64\System.Reflection.Primitives.dll"
  File "Publish\arm64\System.Reflection.TypeExtensions.dll"
  File "Publish\arm64\System.Resources.Extensions.dll"
  File "Publish\arm64\System.Resources.Reader.dll"
  File "Publish\arm64\System.Resources.ResourceManager.dll"
  File "Publish\arm64\System.Resources.Writer.dll"
  File "Publish\arm64\System.Runtime.CompilerServices.Unsafe.dll"
  File "Publish\arm64\System.Runtime.CompilerServices.VisualC.dll"
  File "Publish\arm64\System.Runtime.dll"
  File "Publish\arm64\System.Runtime.Extensions.dll"
  File "Publish\arm64\System.Runtime.Handles.dll"
  File "Publish\arm64\System.Runtime.InteropServices.dll"
  File "Publish\arm64\System.Runtime.InteropServices.RuntimeInformation.dll"
  File "Publish\arm64\System.Runtime.Intrinsics.dll"
  File "Publish\arm64\System.Runtime.Loader.dll"
  File "Publish\arm64\System.Runtime.Numerics.dll"
  File "Publish\arm64\System.Runtime.Serialization.dll"
  File "Publish\arm64\System.Runtime.Serialization.Formatters.dll"
  File "Publish\arm64\System.Runtime.Serialization.Json.dll"
  File "Publish\arm64\System.Runtime.Serialization.Primitives.dll"
  File "Publish\arm64\System.Runtime.Serialization.Xml.dll"
  File "Publish\arm64\System.Security.AccessControl.dll"
  File "Publish\arm64\System.Security.Claims.dll"
  File "Publish\arm64\System.Security.Cryptography.Algorithms.dll"
  File "Publish\arm64\System.Security.Cryptography.Cng.dll"
  File "Publish\arm64\System.Security.Cryptography.Csp.dll"
  File "Publish\arm64\System.Security.Cryptography.Encoding.dll"
  File "Publish\arm64\System.Security.Cryptography.OpenSsl.dll"
  File "Publish\arm64\System.Security.Cryptography.Pkcs.dll"
  File "Publish\arm64\System.Security.Cryptography.Primitives.dll"
  File "Publish\arm64\System.Security.Cryptography.ProtectedData.dll"
  File "Publish\arm64\System.Security.Cryptography.X509Certificates.dll"
  File "Publish\arm64\System.Security.Cryptography.Xml.dll"
  File "Publish\arm64\System.Security.dll"
  File "Publish\arm64\System.Security.Permissions.dll"
  File "Publish\arm64\System.Security.Principal.dll"
  File "Publish\arm64\System.Security.Principal.Windows.dll"
  File "Publish\arm64\System.Security.SecureString.dll"
  File "Publish\arm64\System.ServiceModel.Web.dll"
  File "Publish\arm64\System.ServiceProcess.dll"
  File "Publish\arm64\System.Text.Encoding.CodePages.dll"
  File "Publish\arm64\System.Text.Encoding.dll"
  File "Publish\arm64\System.Text.Encoding.Extensions.dll"
  File "Publish\arm64\System.Text.Encodings.Web.dll"
  File "Publish\arm64\System.Text.Json.dll"
  File "Publish\arm64\System.Text.RegularExpressions.dll"
  File "Publish\arm64\System.Threading.AccessControl.dll"
  File "Publish\arm64\System.Threading.Channels.dll"
  File "Publish\arm64\System.Threading.dll"
  File "Publish\arm64\System.Threading.Overlapped.dll"
  File "Publish\arm64\System.Threading.Tasks.Dataflow.dll"
  File "Publish\arm64\System.Threading.Tasks.dll"
  File "Publish\arm64\System.Threading.Tasks.Extensions.dll"
  File "Publish\arm64\System.Threading.Tasks.Parallel.dll"
  File "Publish\arm64\System.Threading.Thread.dll"
  File "Publish\arm64\System.Threading.ThreadPool.dll"
  File "Publish\arm64\System.Threading.Timer.dll"
  File "Publish\arm64\System.Transactions.dll"
  File "Publish\arm64\System.Transactions.Local.dll"
  File "Publish\arm64\System.ValueTuple.dll"
  File "Publish\arm64\System.Web.dll"
  File "Publish\arm64\System.Web.HttpUtility.dll"
  File "Publish\arm64\System.Windows.Controls.Ribbon.dll"
  File "Publish\arm64\System.Windows.dll"
  File "Publish\arm64\System.Windows.Extensions.dll"
  File "Publish\arm64\System.Windows.Forms.Design.dll"
  File "Publish\arm64\System.Windows.Forms.Design.Editors.dll"
  File "Publish\arm64\System.Windows.Forms.dll"
  File "Publish\arm64\System.Windows.Forms.Primitives.dll"
  File "Publish\arm64\System.Windows.Input.Manipulations.dll"
  File "Publish\arm64\System.Windows.Presentation.dll"
  File "Publish\arm64\System.Xaml.dll"
  File "Publish\arm64\System.Xml.dll"
  File "Publish\arm64\System.Xml.Linq.dll"
  File "Publish\arm64\System.Xml.ReaderWriter.dll"
  File "Publish\arm64\System.Xml.Serialization.dll"
  File "Publish\arm64\System.Xml.XDocument.dll"
  File "Publish\arm64\System.Xml.XmlDocument.dll"
  File "Publish\arm64\System.Xml.XmlSerializer.dll"
  File "Publish\arm64\System.Xml.XPath.dll"
  File "Publish\arm64\System.Xml.XPath.XDocument.dll"
  File "Publish\arm64\UIAutomationClient.dll"
  File "Publish\arm64\UIAutomationClientSideProviders.dll"
  File "Publish\arm64\UIAutomationProvider.dll"
  File "Publish\arm64\UIAutomationTypes.dll"
  File "Publish\arm64\vcruntime140_cor3.dll"
  File "Publish\arm64\WindowsBase.dll"
  File "Publish\arm64\WindowsFormsIntegration.dll"
  File "Publish\arm64\WinRT.Runtime.dll"
  File "Publish\arm64\wpfgfx_cor3.dll"
  File "Publish\arm64\WSATools.Background.deps.json"
  File "Publish\arm64\WSATools.Background.dll"
  File "Publish\arm64\WSATools.Background.exe"
  File "Publish\arm64\WSATools.Background.runtimeconfig.json"
  File "Publish\arm64\WSATools.deps.json"
  File "Publish\arm64\WSATools.dll"
  File "Publish\arm64\WSATools.exe"
  File "Publish\arm64\WSATools.Libs.deps.json"
  File "Publish\arm64\WSATools.Libs.dll"
  File "Publish\arm64\WSATools.runtimeconfig.json"
  SetOutPath "$INSTDIR\zh-Hans"
  File "Publish\arm64\zh-Hans\Microsoft.VisualBasic.Forms.resources.dll"
  File "Publish\arm64\zh-Hans\PresentationCore.resources.dll"
  File "Publish\arm64\zh-Hans\PresentationFramework.resources.dll"
  File "Publish\arm64\zh-Hans\PresentationUI.resources.dll"
  File "Publish\arm64\zh-Hans\ReachFramework.resources.dll"
  File "Publish\arm64\zh-Hans\System.Windows.Controls.Ribbon.resources.dll"
  File "Publish\arm64\zh-Hans\System.Windows.Forms.Design.resources.dll"
  File "Publish\arm64\zh-Hans\System.Windows.Forms.Primitives.resources.dll"
  File "Publish\arm64\zh-Hans\System.Windows.Forms.resources.dll"
  File "Publish\arm64\zh-Hans\System.Windows.Input.Manipulations.resources.dll"
  File "Publish\arm64\zh-Hans\System.Xaml.resources.dll"
  File "Publish\arm64\zh-Hans\UIAutomationClient.resources.dll"
  File "Publish\arm64\zh-Hans\UIAutomationClientSideProviders.resources.dll"
  File "Publish\arm64\zh-Hans\UIAutomationProvider.resources.dll"
  File "Publish\arm64\zh-Hans\UIAutomationTypes.resources.dll"
  File "Publish\arm64\zh-Hans\WindowsBase.resources.dll"
  File "Publish\arm64\zh-Hans\WindowsFormsIntegration.resources.dll"
  SetOutPath "$INSTDIR\zh-Hant"
  File "Publish\arm64\zh-Hant\Microsoft.VisualBasic.Forms.resources.dll"
  File "Publish\arm64\zh-Hant\PresentationCore.resources.dll"
  File "Publish\arm64\zh-Hant\PresentationFramework.resources.dll"
  File "Publish\arm64\zh-Hant\PresentationUI.resources.dll"
  File "Publish\arm64\zh-Hant\ReachFramework.resources.dll"
  File "Publish\arm64\zh-Hant\System.Windows.Controls.Ribbon.resources.dll"
  File "Publish\arm64\zh-Hant\System.Windows.Forms.Design.resources.dll"
  File "Publish\arm64\zh-Hant\System.Windows.Forms.Primitives.resources.dll"
  File "Publish\arm64\zh-Hant\System.Windows.Forms.resources.dll"
  File "Publish\arm64\zh-Hant\System.Windows.Input.Manipulations.resources.dll"
  File "Publish\arm64\zh-Hant\System.Xaml.resources.dll"
  File "Publish\arm64\zh-Hant\UIAutomationClient.resources.dll"
  File "Publish\arm64\zh-Hant\UIAutomationClientSideProviders.resources.dll"
  File "Publish\arm64\zh-Hant\UIAutomationProvider.resources.dll"
  File "Publish\arm64\zh-Hant\UIAutomationTypes.resources.dll"
  File "Publish\arm64\zh-Hant\WindowsBase.resources.dll"
  File "Publish\arm64\zh-Hant\WindowsFormsIntegration.resources.dll"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\WSATools\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\WSATools.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\WSATools.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) �ѳɹ��ش���ļ�����Ƴ���"
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "��ȷʵҪ��ȫ�Ƴ� $(^Name) ���估���е������?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\zh-Hant\WindowsFormsIntegration.resources.dll"
  Delete "$INSTDIR\zh-Hant\WindowsBase.resources.dll"
  Delete "$INSTDIR\zh-Hant\UIAutomationTypes.resources.dll"
  Delete "$INSTDIR\zh-Hant\UIAutomationProvider.resources.dll"
  Delete "$INSTDIR\zh-Hant\UIAutomationClientSideProviders.resources.dll"
  Delete "$INSTDIR\zh-Hant\UIAutomationClient.resources.dll"
  Delete "$INSTDIR\zh-Hant\System.Xaml.resources.dll"
  Delete "$INSTDIR\zh-Hant\System.Windows.Input.Manipulations.resources.dll"
  Delete "$INSTDIR\zh-Hant\System.Windows.Forms.resources.dll"
  Delete "$INSTDIR\zh-Hant\System.Windows.Forms.Primitives.resources.dll"
  Delete "$INSTDIR\zh-Hant\System.Windows.Forms.Design.resources.dll"
  Delete "$INSTDIR\zh-Hant\System.Windows.Controls.Ribbon.resources.dll"
  Delete "$INSTDIR\zh-Hant\ReachFramework.resources.dll"
  Delete "$INSTDIR\zh-Hant\PresentationUI.resources.dll"
  Delete "$INSTDIR\zh-Hant\PresentationFramework.resources.dll"
  Delete "$INSTDIR\zh-Hant\PresentationCore.resources.dll"
  Delete "$INSTDIR\zh-Hant\Microsoft.VisualBasic.Forms.resources.dll"
  Delete "$INSTDIR\zh-Hans\WindowsFormsIntegration.resources.dll"
  Delete "$INSTDIR\zh-Hans\WindowsBase.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationTypes.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationProvider.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationClientSideProviders.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationClient.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Xaml.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Input.Manipulations.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.Primitives.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.Design.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Controls.Ribbon.resources.dll"
  Delete "$INSTDIR\zh-Hans\ReachFramework.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationUI.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationFramework.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationCore.resources.dll"
  Delete "$INSTDIR\zh-Hans\Microsoft.VisualBasic.Forms.resources.dll"
  Delete "$INSTDIR\WSATools.runtimeconfig.json"
  Delete "$INSTDIR\WSATools.Libs.dll"
  Delete "$INSTDIR\WSATools.Libs.deps.json"
  Delete "$INSTDIR\WSATools.exe"
  Delete "$INSTDIR\WSATools.dll"
  Delete "$INSTDIR\WSATools.deps.json"
  Delete "$INSTDIR\WSATools.Background.runtimeconfig.json"
  Delete "$INSTDIR\WSATools.Background.exe"
  Delete "$INSTDIR\WSATools.Background.dll"
  Delete "$INSTDIR\WSATools.Background.deps.json"
  Delete "$INSTDIR\wpfgfx_cor3.dll"
  Delete "$INSTDIR\WinRT.Runtime.dll"
  Delete "$INSTDIR\WindowsFormsIntegration.dll"
  Delete "$INSTDIR\WindowsBase.dll"
  Delete "$INSTDIR\vcruntime140_cor3.dll"
  Delete "$INSTDIR\UIAutomationTypes.dll"
  Delete "$INSTDIR\UIAutomationProvider.dll"
  Delete "$INSTDIR\UIAutomationClientSideProviders.dll"
  Delete "$INSTDIR\UIAutomationClient.dll"
  Delete "$INSTDIR\System.Xml.XPath.XDocument.dll"
  Delete "$INSTDIR\System.Xml.XPath.dll"
  Delete "$INSTDIR\System.Xml.XmlSerializer.dll"
  Delete "$INSTDIR\System.Xml.XmlDocument.dll"
  Delete "$INSTDIR\System.Xml.XDocument.dll"
  Delete "$INSTDIR\System.Xml.Serialization.dll"
  Delete "$INSTDIR\System.Xml.ReaderWriter.dll"
  Delete "$INSTDIR\System.Xml.Linq.dll"
  Delete "$INSTDIR\System.Xml.dll"
  Delete "$INSTDIR\System.Xaml.dll"
  Delete "$INSTDIR\System.Windows.Presentation.dll"
  Delete "$INSTDIR\System.Windows.Input.Manipulations.dll"
  Delete "$INSTDIR\System.Windows.Forms.Primitives.dll"
  Delete "$INSTDIR\System.Windows.Forms.dll"
  Delete "$INSTDIR\System.Windows.Forms.Design.Editors.dll"
  Delete "$INSTDIR\System.Windows.Forms.Design.dll"
  Delete "$INSTDIR\System.Windows.Extensions.dll"
  Delete "$INSTDIR\System.Windows.dll"
  Delete "$INSTDIR\System.Windows.Controls.Ribbon.dll"
  Delete "$INSTDIR\System.Web.HttpUtility.dll"
  Delete "$INSTDIR\System.Web.dll"
  Delete "$INSTDIR\System.ValueTuple.dll"
  Delete "$INSTDIR\System.Transactions.Local.dll"
  Delete "$INSTDIR\System.Transactions.dll"
  Delete "$INSTDIR\System.Threading.Timer.dll"
  Delete "$INSTDIR\System.Threading.ThreadPool.dll"
  Delete "$INSTDIR\System.Threading.Thread.dll"
  Delete "$INSTDIR\System.Threading.Tasks.Parallel.dll"
  Delete "$INSTDIR\System.Threading.Tasks.Extensions.dll"
  Delete "$INSTDIR\System.Threading.Tasks.dll"
  Delete "$INSTDIR\System.Threading.Tasks.Dataflow.dll"
  Delete "$INSTDIR\System.Threading.Overlapped.dll"
  Delete "$INSTDIR\System.Threading.dll"
  Delete "$INSTDIR\System.Threading.Channels.dll"
  Delete "$INSTDIR\System.Threading.AccessControl.dll"
  Delete "$INSTDIR\System.Text.RegularExpressions.dll"
  Delete "$INSTDIR\System.Text.Json.dll"
  Delete "$INSTDIR\System.Text.Encodings.Web.dll"
  Delete "$INSTDIR\System.Text.Encoding.Extensions.dll"
  Delete "$INSTDIR\System.Text.Encoding.dll"
  Delete "$INSTDIR\System.Text.Encoding.CodePages.dll"
  Delete "$INSTDIR\System.ServiceProcess.dll"
  Delete "$INSTDIR\System.ServiceModel.Web.dll"
  Delete "$INSTDIR\System.Security.SecureString.dll"
  Delete "$INSTDIR\System.Security.Principal.Windows.dll"
  Delete "$INSTDIR\System.Security.Principal.dll"
  Delete "$INSTDIR\System.Security.Permissions.dll"
  Delete "$INSTDIR\System.Security.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Xml.dll"
  Delete "$INSTDIR\System.Security.Cryptography.X509Certificates.dll"
  Delete "$INSTDIR\System.Security.Cryptography.ProtectedData.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Primitives.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Pkcs.dll"
  Delete "$INSTDIR\System.Security.Cryptography.OpenSsl.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Encoding.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Csp.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Cng.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Algorithms.dll"
  Delete "$INSTDIR\System.Security.Claims.dll"
  Delete "$INSTDIR\System.Security.AccessControl.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Xml.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Primitives.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Json.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Formatters.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.dll"
  Delete "$INSTDIR\System.Runtime.Numerics.dll"
  Delete "$INSTDIR\System.Runtime.Loader.dll"
  Delete "$INSTDIR\System.Runtime.Intrinsics.dll"
  Delete "$INSTDIR\System.Runtime.InteropServices.RuntimeInformation.dll"
  Delete "$INSTDIR\System.Runtime.InteropServices.dll"
  Delete "$INSTDIR\System.Runtime.Handles.dll"
  Delete "$INSTDIR\System.Runtime.Extensions.dll"
  Delete "$INSTDIR\System.Runtime.dll"
  Delete "$INSTDIR\System.Runtime.CompilerServices.VisualC.dll"
  Delete "$INSTDIR\System.Runtime.CompilerServices.Unsafe.dll"
  Delete "$INSTDIR\System.Resources.Writer.dll"
  Delete "$INSTDIR\System.Resources.ResourceManager.dll"
  Delete "$INSTDIR\System.Resources.Reader.dll"
  Delete "$INSTDIR\System.Resources.Extensions.dll"
  Delete "$INSTDIR\System.Reflection.TypeExtensions.dll"
  Delete "$INSTDIR\System.Reflection.Primitives.dll"
  Delete "$INSTDIR\System.Reflection.Metadata.dll"
  Delete "$INSTDIR\System.Reflection.Extensions.dll"
  Delete "$INSTDIR\System.Reflection.Emit.Lightweight.dll"
  Delete "$INSTDIR\System.Reflection.Emit.ILGeneration.dll"
  Delete "$INSTDIR\System.Reflection.Emit.dll"
  Delete "$INSTDIR\System.Reflection.dll"
  Delete "$INSTDIR\System.Reflection.DispatchProxy.dll"
  Delete "$INSTDIR\System.Reactive.dll"
  Delete "$INSTDIR\System.Private.Xml.Linq.dll"
  Delete "$INSTDIR\System.Private.Xml.dll"
  Delete "$INSTDIR\System.Private.Uri.dll"
  Delete "$INSTDIR\System.Private.DataContractSerialization.dll"
  Delete "$INSTDIR\System.Private.CoreLib.dll"
  Delete "$INSTDIR\System.Printing.dll"
  Delete "$INSTDIR\System.ObjectModel.dll"
  Delete "$INSTDIR\System.Numerics.Vectors.dll"
  Delete "$INSTDIR\System.Numerics.dll"
  Delete "$INSTDIR\System.Net.WebSockets.dll"
  Delete "$INSTDIR\System.Net.WebSockets.Client.dll"
  Delete "$INSTDIR\System.Net.WebProxy.dll"
  Delete "$INSTDIR\System.Net.WebHeaderCollection.dll"
  Delete "$INSTDIR\System.Net.WebClient.dll"
  Delete "$INSTDIR\System.Net.Sockets.dll"
  Delete "$INSTDIR\System.Net.ServicePoint.dll"
  Delete "$INSTDIR\System.Net.Security.dll"
  Delete "$INSTDIR\System.Net.Requests.dll"
  Delete "$INSTDIR\System.Net.Quic.dll"
  Delete "$INSTDIR\System.Net.Primitives.dll"
  Delete "$INSTDIR\System.Net.Ping.dll"
  Delete "$INSTDIR\System.Net.NetworkInformation.dll"
  Delete "$INSTDIR\System.Net.NameResolution.dll"
  Delete "$INSTDIR\System.Net.Mail.dll"
  Delete "$INSTDIR\System.Net.HttpListener.dll"
  Delete "$INSTDIR\System.Net.Http.Json.dll"
  Delete "$INSTDIR\System.Net.Http.dll"
  Delete "$INSTDIR\System.Net.dll"
  Delete "$INSTDIR\System.Memory.dll"
  Delete "$INSTDIR\System.Linq.Queryable.dll"
  Delete "$INSTDIR\System.Linq.Parallel.dll"
  Delete "$INSTDIR\System.Linq.Expressions.dll"
  Delete "$INSTDIR\System.Linq.dll"
  Delete "$INSTDIR\System.IO.UnmanagedMemoryStream.dll"
  Delete "$INSTDIR\System.IO.Pipes.dll"
  Delete "$INSTDIR\System.IO.Pipes.AccessControl.dll"
  Delete "$INSTDIR\System.IO.Packaging.dll"
  Delete "$INSTDIR\System.IO.MemoryMappedFiles.dll"
  Delete "$INSTDIR\System.IO.IsolatedStorage.dll"
  Delete "$INSTDIR\System.IO.FileSystem.Watcher.dll"
  Delete "$INSTDIR\System.IO.FileSystem.Primitives.dll"
  Delete "$INSTDIR\System.IO.FileSystem.DriveInfo.dll"
  Delete "$INSTDIR\System.IO.FileSystem.dll"
  Delete "$INSTDIR\System.IO.FileSystem.AccessControl.dll"
  Delete "$INSTDIR\System.IO.dll"
  Delete "$INSTDIR\System.IO.Compression.ZipFile.dll"
  Delete "$INSTDIR\System.IO.Compression.Native.dll"
  Delete "$INSTDIR\System.IO.Compression.FileSystem.dll"
  Delete "$INSTDIR\System.IO.Compression.dll"
  Delete "$INSTDIR\System.IO.Compression.Brotli.dll"
  Delete "$INSTDIR\System.Globalization.Extensions.dll"
  Delete "$INSTDIR\System.Globalization.dll"
  Delete "$INSTDIR\System.Globalization.Calendars.dll"
  Delete "$INSTDIR\System.Formats.Asn1.dll"
  Delete "$INSTDIR\System.Dynamic.Runtime.dll"
  Delete "$INSTDIR\System.Drawing.Primitives.dll"
  Delete "$INSTDIR\System.Drawing.dll"
  Delete "$INSTDIR\System.Drawing.Design.dll"
  Delete "$INSTDIR\System.Drawing.Common.dll"
  Delete "$INSTDIR\System.dll"
  Delete "$INSTDIR\System.DirectoryServices.dll"
  Delete "$INSTDIR\System.Diagnostics.Tracing.dll"
  Delete "$INSTDIR\System.Diagnostics.TraceSource.dll"
  Delete "$INSTDIR\System.Diagnostics.Tools.dll"
  Delete "$INSTDIR\System.Diagnostics.TextWriterTraceListener.dll"
  Delete "$INSTDIR\System.Diagnostics.StackTrace.dll"
  Delete "$INSTDIR\System.Diagnostics.Process.dll"
  Delete "$INSTDIR\System.Diagnostics.PerformanceCounter.dll"
  Delete "$INSTDIR\System.Diagnostics.FileVersionInfo.dll"
  Delete "$INSTDIR\System.Diagnostics.EventLog.dll"
  Delete "$INSTDIR\System.Diagnostics.DiagnosticSource.dll"
  Delete "$INSTDIR\System.Diagnostics.Debug.dll"
  Delete "$INSTDIR\System.Diagnostics.Contracts.dll"
  Delete "$INSTDIR\System.Design.dll"
  Delete "$INSTDIR\System.Data.dll"
  Delete "$INSTDIR\System.Data.DataSetExtensions.dll"
  Delete "$INSTDIR\System.Data.Common.dll"
  Delete "$INSTDIR\System.Core.dll"
  Delete "$INSTDIR\System.Console.dll"
  Delete "$INSTDIR\System.Configuration.dll"
  Delete "$INSTDIR\System.Configuration.ConfigurationManager.dll"
  Delete "$INSTDIR\System.ComponentModel.TypeConverter.dll"
  Delete "$INSTDIR\System.ComponentModel.Primitives.dll"
  Delete "$INSTDIR\System.ComponentModel.EventBasedAsync.dll"
  Delete "$INSTDIR\System.ComponentModel.dll"
  Delete "$INSTDIR\System.ComponentModel.DataAnnotations.dll"
  Delete "$INSTDIR\System.ComponentModel.Annotations.dll"
  Delete "$INSTDIR\System.Collections.Specialized.dll"
  Delete "$INSTDIR\System.Collections.NonGeneric.dll"
  Delete "$INSTDIR\System.Collections.Immutable.dll"
  Delete "$INSTDIR\System.Collections.dll"
  Delete "$INSTDIR\System.Collections.Concurrent.dll"
  Delete "$INSTDIR\System.CodeDom.dll"
  Delete "$INSTDIR\System.Buffers.dll"
  Delete "$INSTDIR\System.AppContext.dll"
  Delete "$INSTDIR\Serilog.Sinks.File.dll"
  Delete "$INSTDIR\Serilog.Sinks.Async.dll"
  Delete "$INSTDIR\Serilog.dll"
  Delete "$INSTDIR\ReachFramework.dll"
  Delete "$INSTDIR\PresentationUI.dll"
  Delete "$INSTDIR\PresentationNative_cor3.dll"
  Delete "$INSTDIR\PresentationFramework.Royale.dll"
  Delete "$INSTDIR\PresentationFramework.Luna.dll"
  Delete "$INSTDIR\PresentationFramework.dll"
  Delete "$INSTDIR\PresentationFramework.Classic.dll"
  Delete "$INSTDIR\PresentationFramework.AeroLite.dll"
  Delete "$INSTDIR\PresentationFramework.Aero2.dll"
  Delete "$INSTDIR\PresentationFramework.Aero.dll"
  Delete "$INSTDIR\PresentationFramework-SystemXmlLinq.dll"
  Delete "$INSTDIR\PresentationFramework-SystemXml.dll"
  Delete "$INSTDIR\PresentationFramework-SystemDrawing.dll"
  Delete "$INSTDIR\PresentationFramework-SystemData.dll"
  Delete "$INSTDIR\PresentationFramework-SystemCore.dll"
  Delete "$INSTDIR\PresentationCore.dll"
  Delete "$INSTDIR\PenImc_cor3.dll"
  Delete "$INSTDIR\Newtonsoft.Json.dll"
  Delete "$INSTDIR\netstandard.dll"
  Delete "$INSTDIR\mscorrc.dll"
  Delete "$INSTDIR\mscorlib.dll"
  Delete "$INSTDIR\mscordbi.dll"
  Delete "$INSTDIR\mscordaccore_arm64_arm64_6.0.21.52210.dll"
  Delete "$INSTDIR\mscordaccore.dll"
  Delete "$INSTDIR\Microsoft.Xaml.Behaviors.dll"
  Delete "$INSTDIR\Microsoft.Windows.SDK.NET.dll"
  Delete "$INSTDIR\Microsoft.Win32.SystemEvents.dll"
  Delete "$INSTDIR\Microsoft.Win32.Registry.dll"
  Delete "$INSTDIR\Microsoft.Win32.Registry.AccessControl.dll"
  Delete "$INSTDIR\Microsoft.Win32.Primitives.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.Forms.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.Core.dll"
  Delete "$INSTDIR\Microsoft.Toolkit.Mvvm.dll"
  Delete "$INSTDIR\Microsoft.Extensions.Logging.Abstractions.dll"
  Delete "$INSTDIR\Microsoft.DiaSymReader.Native.arm64.dll"
  Delete "$INSTDIR\Microsoft.CSharp.dll"
  Delete "$INSTDIR\icon.ico"
  Delete "$INSTDIR\HtmlAgilityPack.dll"
  Delete "$INSTDIR\hostpolicy.dll"
  Delete "$INSTDIR\hostfxr.dll"
  Delete "$INSTDIR\HandyControl.dll"
  Delete "$INSTDIR\en\HandyControl.resources.dll"
  Delete "$INSTDIR\DynamicData.dll"
  Delete "$INSTDIR\Downloader.dll"
  Delete "$INSTDIR\DirectWriteForwarder.dll"
  Delete "$INSTDIR\dbgshim.dll"
  Delete "$INSTDIR\D3DCompiler_47.dll"
  Delete "$INSTDIR\createdump.exe"
  Delete "$INSTDIR\coreclr.dll"
  Delete "$INSTDIR\clrjit.dll"
  Delete "$INSTDIR\clretwrc.dll"
  Delete "$INSTDIR\AdvancedSharpAdbClient.dll"
  Delete "$INSTDIR\AdbWinUsbApi.dll"
  Delete "$INSTDIR\AdbWinApi.dll"
  Delete "$INSTDIR\adb.exe"
  Delete "$INSTDIR\Accessibility.dll"

  Delete "$SMPROGRAMS\WSATools\Uninstall.lnk"
  Delete "$DESKTOP\WSATools.lnk"
  Delete "$SMPROGRAMS\WSATools\WSATools.lnk"

  RMDir "$SMPROGRAMS\WSATools"
  RMDir "$INSTDIR\zh-Hant"
  RMDir "$INSTDIR\zh-Hans"
  RMDir "$INSTDIR\en"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd