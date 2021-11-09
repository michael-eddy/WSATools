; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "WSA助手"
!define PRODUCT_VERSION "1.1.1"
!define PRODUCT_PUBLISHER "michael_eddy"
!define PRODUCT_WEB_SITE "https://michael-eddy.github.io/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\WSATools.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "..\..\images\icon.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

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
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
InstallDir "$PROGRAMFILES\WSA助手"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "Publish\Accessibility.dll"
  File "Publish\api-ms-win-core-console-l1-1-0.dll"
  File "Publish\api-ms-win-core-datetime-l1-1-0.dll"
  File "Publish\api-ms-win-core-debug-l1-1-0.dll"
  File "Publish\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "Publish\api-ms-win-core-file-l1-1-0.dll"
  File "Publish\api-ms-win-core-file-l1-2-0.dll"
  File "Publish\api-ms-win-core-file-l2-1-0.dll"
  File "Publish\api-ms-win-core-handle-l1-1-0.dll"
  File "Publish\api-ms-win-core-heap-l1-1-0.dll"
  File "Publish\api-ms-win-core-interlocked-l1-1-0.dll"
  File "Publish\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "Publish\api-ms-win-core-localization-l1-2-0.dll"
  File "Publish\api-ms-win-core-memory-l1-1-0.dll"
  File "Publish\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "Publish\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "Publish\api-ms-win-core-processthreads-l1-1-0.dll"
  File "Publish\api-ms-win-core-processthreads-l1-1-1.dll"
  File "Publish\api-ms-win-core-profile-l1-1-0.dll"
  File "Publish\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "Publish\api-ms-win-core-string-l1-1-0.dll"
  File "Publish\api-ms-win-core-synch-l1-1-0.dll"
  File "Publish\api-ms-win-core-synch-l1-2-0.dll"
  File "Publish\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "Publish\api-ms-win-core-timezone-l1-1-0.dll"
  File "Publish\api-ms-win-core-util-l1-1-0.dll"
  File "Publish\api-ms-win-crt-conio-l1-1-0.dll"
  File "Publish\api-ms-win-crt-convert-l1-1-0.dll"
  File "Publish\api-ms-win-crt-environment-l1-1-0.dll"
  File "Publish\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "Publish\api-ms-win-crt-heap-l1-1-0.dll"
  File "Publish\api-ms-win-crt-locale-l1-1-0.dll"
  File "Publish\api-ms-win-crt-math-l1-1-0.dll"
  File "Publish\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "Publish\api-ms-win-crt-private-l1-1-0.dll"
  File "Publish\api-ms-win-crt-process-l1-1-0.dll"
  File "Publish\api-ms-win-crt-runtime-l1-1-0.dll"
  File "Publish\api-ms-win-crt-stdio-l1-1-0.dll"
  File "Publish\api-ms-win-crt-string-l1-1-0.dll"
  File "Publish\api-ms-win-crt-time-l1-1-0.dll"
  File "Publish\api-ms-win-crt-utility-l1-1-0.dll"
  File "Publish\clrcompression.dll"
  File "Publish\clretwrc.dll"
  File "Publish\clrjit.dll"
  File "Publish\coreclr.dll"
  File "Publish\D3DCompiler_47_cor3.dll"
  File "Publish\dbgshim.dll"
  File "Publish\DirectWriteForwarder.dll"
  File "Publish\DynamicData.dll"
  File "Publish\HandyControl.dll"
  File "Publish\hostfxr.dll"
  File "Publish\hostpolicy.dll"
  File "Publish\HtmlAgilityPack.dll"
  File "Publish\ICSharpCode.SharpZipLib.dll"
  File "Publish\Microsoft.CSharp.dll"
  File "Publish\Microsoft.DiaSymReader.Native.amd64.dll"
  File "Publish\Microsoft.Toolkit.Mvvm.dll"
  File "Publish\Microsoft.VisualBasic.Core.dll"
  File "Publish\Microsoft.VisualBasic.dll"
  File "Publish\Microsoft.Win32.Primitives.dll"
  File "Publish\Microsoft.Win32.Registry.AccessControl.dll"
  File "Publish\Microsoft.Win32.Registry.dll"
  File "Publish\Microsoft.Win32.SystemEvents.dll"
  File "Publish\Microsoft.Xaml.Behaviors.dll"
  File "Publish\mscordaccore.dll"
  File "Publish\mscordaccore_amd64_amd64_4.700.21.47003.dll"
  File "Publish\mscordbi.dll"
  File "Publish\mscorlib.dll"
  File "Publish\mscorrc.debug.dll"
  File "Publish\mscorrc.dll"
  File "Publish\netstandard.dll"
  File "Publish\PenImc_cor3.dll"
  File "Publish\PresentationCore.dll"
  File "Publish\PresentationFramework-SystemCore.dll"
  File "Publish\PresentationFramework-SystemData.dll"
  File "Publish\PresentationFramework-SystemDrawing.dll"
  File "Publish\PresentationFramework-SystemXml.dll"
  File "Publish\PresentationFramework-SystemXmlLinq.dll"
  File "Publish\PresentationFramework.Aero.dll"
  File "Publish\PresentationFramework.Aero2.dll"
  File "Publish\PresentationFramework.AeroLite.dll"
  File "Publish\PresentationFramework.Classic.dll"
  File "Publish\PresentationFramework.dll"
  File "Publish\PresentationFramework.Luna.dll"
  File "Publish\PresentationFramework.Royale.dll"
  File "Publish\PresentationNative_cor3.dll"
  File "Publish\PresentationUI.dll"
  File "Publish\ReachFramework.dll"
  File "Publish\Serilog.dll"
  File "Publish\Serilog.Sinks.Async.dll"
  File "Publish\Serilog.Sinks.File.dll"
  File "Publish\System.AppContext.dll"
  File "Publish\System.Buffers.dll"
  File "Publish\System.CodeDom.dll"
  File "Publish\System.Collections.Concurrent.dll"
  File "Publish\System.Collections.dll"
  File "Publish\System.Collections.Immutable.dll"
  File "Publish\System.Collections.NonGeneric.dll"
  File "Publish\System.Collections.Specialized.dll"
  File "Publish\System.ComponentModel.Annotations.dll"
  File "Publish\System.ComponentModel.DataAnnotations.dll"
  File "Publish\System.ComponentModel.dll"
  File "Publish\System.ComponentModel.EventBasedAsync.dll"
  File "Publish\System.ComponentModel.Primitives.dll"
  File "Publish\System.ComponentModel.TypeConverter.dll"
  File "Publish\System.Configuration.ConfigurationManager.dll"
  File "Publish\System.Configuration.dll"
  File "Publish\System.Console.dll"
  File "Publish\System.Core.dll"
  File "Publish\System.Data.Common.dll"
  File "Publish\System.Data.DataSetExtensions.dll"
  File "Publish\System.Data.dll"
  File "Publish\System.Design.dll"
  File "Publish\System.Diagnostics.Contracts.dll"
  File "Publish\System.Diagnostics.Debug.dll"
  File "Publish\System.Diagnostics.DiagnosticSource.dll"
  File "Publish\System.Diagnostics.EventLog.dll"
  File "Publish\System.Diagnostics.FileVersionInfo.dll"
  File "Publish\System.Diagnostics.PerformanceCounter.dll"
  File "Publish\System.Diagnostics.Process.dll"
  File "Publish\System.Diagnostics.StackTrace.dll"
  File "Publish\System.Diagnostics.TextWriterTraceListener.dll"
  File "Publish\System.Diagnostics.Tools.dll"
  File "Publish\System.Diagnostics.TraceSource.dll"
  File "Publish\System.Diagnostics.Tracing.dll"
  File "Publish\System.DirectoryServices.dll"
  File "Publish\System.dll"
  File "Publish\System.Drawing.Common.dll"
  File "Publish\System.Drawing.Design.dll"
  File "Publish\System.Drawing.dll"
  File "Publish\System.Drawing.Primitives.dll"
  File "Publish\System.Dynamic.Runtime.dll"
  File "Publish\System.Globalization.Calendars.dll"
  File "Publish\System.Globalization.dll"
  File "Publish\System.Globalization.Extensions.dll"
  File "Publish\System.IO.Compression.Brotli.dll"
  File "Publish\System.IO.Compression.dll"
  File "Publish\System.IO.Compression.FileSystem.dll"
  File "Publish\System.IO.Compression.ZipFile.dll"
  File "Publish\System.IO.dll"
  File "Publish\System.IO.FileSystem.AccessControl.dll"
  File "Publish\System.IO.FileSystem.dll"
  File "Publish\System.IO.FileSystem.DriveInfo.dll"
  File "Publish\System.IO.FileSystem.Primitives.dll"
  File "Publish\System.IO.FileSystem.Watcher.dll"
  File "Publish\System.IO.IsolatedStorage.dll"
  File "Publish\System.IO.MemoryMappedFiles.dll"
  File "Publish\System.IO.Packaging.dll"
  File "Publish\System.IO.Pipes.AccessControl.dll"
  File "Publish\System.IO.Pipes.dll"
  File "Publish\System.IO.UnmanagedMemoryStream.dll"
  File "Publish\System.Linq.dll"
  File "Publish\System.Linq.Expressions.dll"
  File "Publish\System.Linq.Parallel.dll"
  File "Publish\System.Linq.Queryable.dll"
  File "Publish\System.Memory.dll"
  File "Publish\System.Net.dll"
  File "Publish\System.Net.Http.dll"
  File "Publish\System.Net.HttpListener.dll"
  File "Publish\System.Net.Mail.dll"
  File "Publish\System.Net.NameResolution.dll"
  File "Publish\System.Net.NetworkInformation.dll"
  File "Publish\System.Net.Ping.dll"
  File "Publish\System.Net.Primitives.dll"
  File "Publish\System.Net.Requests.dll"
  File "Publish\System.Net.Security.dll"
  File "Publish\System.Net.ServicePoint.dll"
  File "Publish\System.Net.Sockets.dll"
  File "Publish\System.Net.WebClient.dll"
  File "Publish\System.Net.WebHeaderCollection.dll"
  File "Publish\System.Net.WebProxy.dll"
  File "Publish\System.Net.WebSockets.Client.dll"
  File "Publish\System.Net.WebSockets.dll"
  File "Publish\System.Numerics.dll"
  File "Publish\System.Numerics.Vectors.dll"
  File "Publish\System.ObjectModel.dll"
  File "Publish\System.Printing.dll"
  File "Publish\System.Private.CoreLib.dll"
  File "Publish\System.Private.DataContractSerialization.dll"
  File "Publish\System.Private.Uri.dll"
  File "Publish\System.Private.Xml.dll"
  File "Publish\System.Private.Xml.Linq.dll"
  File "Publish\System.Reactive.dll"
  File "Publish\System.Reflection.DispatchProxy.dll"
  File "Publish\System.Reflection.dll"
  File "Publish\System.Reflection.Emit.dll"
  File "Publish\System.Reflection.Emit.ILGeneration.dll"
  File "Publish\System.Reflection.Emit.Lightweight.dll"
  File "Publish\System.Reflection.Extensions.dll"
  File "Publish\System.Reflection.Metadata.dll"
  File "Publish\System.Reflection.Primitives.dll"
  File "Publish\System.Reflection.TypeExtensions.dll"
  File "Publish\System.Resources.Extensions.dll"
  File "Publish\System.Resources.Reader.dll"
  File "Publish\System.Resources.ResourceManager.dll"
  File "Publish\System.Resources.Writer.dll"
  File "Publish\System.Runtime.CompilerServices.Unsafe.dll"
  File "Publish\System.Runtime.CompilerServices.VisualC.dll"
  File "Publish\System.Runtime.dll"
  File "Publish\System.Runtime.Extensions.dll"
  File "Publish\System.Runtime.Handles.dll"
  File "Publish\System.Runtime.InteropServices.dll"
  File "Publish\System.Runtime.InteropServices.RuntimeInformation.dll"
  File "Publish\System.Runtime.InteropServices.WindowsRuntime.dll"
  File "Publish\System.Runtime.Intrinsics.dll"
  File "Publish\System.Runtime.Loader.dll"
  File "Publish\System.Runtime.Numerics.dll"
  File "Publish\System.Runtime.Serialization.dll"
  File "Publish\System.Runtime.Serialization.Formatters.dll"
  File "Publish\System.Runtime.Serialization.Json.dll"
  File "Publish\System.Runtime.Serialization.Primitives.dll"
  File "Publish\System.Runtime.Serialization.Xml.dll"
  File "Publish\System.Runtime.WindowsRuntime.dll"
  File "Publish\System.Runtime.WindowsRuntime.UI.Xaml.dll"
  File "Publish\System.Security.AccessControl.dll"
  File "Publish\System.Security.Claims.dll"
  File "Publish\System.Security.Cryptography.Algorithms.dll"
  File "Publish\System.Security.Cryptography.Cng.dll"
  File "Publish\System.Security.Cryptography.Csp.dll"
  File "Publish\System.Security.Cryptography.Encoding.dll"
  File "Publish\System.Security.Cryptography.OpenSsl.dll"
  File "Publish\System.Security.Cryptography.Pkcs.dll"
  File "Publish\System.Security.Cryptography.Primitives.dll"
  File "Publish\System.Security.Cryptography.ProtectedData.dll"
  File "Publish\System.Security.Cryptography.X509Certificates.dll"
  File "Publish\System.Security.Cryptography.Xml.dll"
  File "Publish\System.Security.dll"
  File "Publish\System.Security.Permissions.dll"
  File "Publish\System.Security.Principal.dll"
  File "Publish\System.Security.Principal.Windows.dll"
  File "Publish\System.Security.SecureString.dll"
  File "Publish\System.ServiceModel.Web.dll"
  File "Publish\System.ServiceProcess.dll"
  File "Publish\System.Text.Encoding.CodePages.dll"
  File "Publish\System.Text.Encoding.dll"
  File "Publish\System.Text.Encoding.Extensions.dll"
  File "Publish\System.Text.Encodings.Web.dll"
  File "Publish\System.Text.Json.dll"
  File "Publish\System.Text.RegularExpressions.dll"
  File "Publish\System.Threading.AccessControl.dll"
  File "Publish\System.Threading.Channels.dll"
  File "Publish\System.Threading.dll"
  File "Publish\System.Threading.Overlapped.dll"
  File "Publish\System.Threading.Tasks.Dataflow.dll"
  File "Publish\System.Threading.Tasks.dll"
  File "Publish\System.Threading.Tasks.Extensions.dll"
  File "Publish\System.Threading.Tasks.Parallel.dll"
  File "Publish\System.Threading.Thread.dll"
  File "Publish\System.Threading.ThreadPool.dll"
  File "Publish\System.Threading.Timer.dll"
  File "Publish\System.Transactions.dll"
  File "Publish\System.Transactions.Local.dll"
  File "Publish\System.ValueTuple.dll"
  File "Publish\System.Web.dll"
  File "Publish\System.Web.HttpUtility.dll"
  File "Publish\System.Windows.Controls.Ribbon.dll"
  File "Publish\System.Windows.dll"
  File "Publish\System.Windows.Extensions.dll"
  File "Publish\System.Windows.Forms.Design.dll"
  File "Publish\System.Windows.Forms.Design.Editors.dll"
  File "Publish\System.Windows.Forms.dll"
  File "Publish\System.Windows.Input.Manipulations.dll"
  File "Publish\System.Windows.Presentation.dll"
  File "Publish\System.Xaml.dll"
  File "Publish\System.Xml.dll"
  File "Publish\System.Xml.Linq.dll"
  File "Publish\System.Xml.ReaderWriter.dll"
  File "Publish\System.Xml.Serialization.dll"
  File "Publish\System.Xml.XDocument.dll"
  File "Publish\System.Xml.XmlDocument.dll"
  File "Publish\System.Xml.XmlSerializer.dll"
  File "Publish\System.Xml.XPath.dll"
  File "Publish\System.Xml.XPath.XDocument.dll"
  File "Publish\ucrtbase.dll"
  File "Publish\UIAutomationClient.dll"
  File "Publish\UIAutomationClientSideProviders.dll"
  File "Publish\UIAutomationProvider.dll"
  File "Publish\UIAutomationTypes.dll"
  File "Publish\vcruntime140_cor3.dll"
  File "Publish\WindowsBase.dll"
  File "Publish\WindowsFormsIntegration.dll"
  File "Publish\wpfgfx_cor3.dll"
  File "Publish\WSATools.deps.json"
  File "Publish\WSATools.dll"
  File "Publish\WSATools.exe"
  CreateDirectory "$SMPROGRAMS\WSA助手"
  CreateShortCut "$SMPROGRAMS\WSA助手\WSA助手.lnk" "$INSTDIR\WSATools.exe"
  CreateShortCut "$DESKTOP\WSA助手.lnk" "$INSTDIR\WSATools.exe"
  File "Publish\WSATools.Libs.dll"
  File "Publish\WSATools.runtimeconfig.json"
  SetOutPath "$INSTDIR\zh-Hans"
  File "Publish\zh-Hans\PresentationCore.resources.dll"
  File "Publish\zh-Hans\PresentationFramework.resources.dll"
  File "Publish\zh-Hans\PresentationUI.resources.dll"
  File "Publish\zh-Hans\ReachFramework.resources.dll"
  File "Publish\zh-Hans\System.Windows.Controls.Ribbon.resources.dll"
  File "Publish\zh-Hans\System.Windows.Forms.Design.Editors.resources.dll"
  File "Publish\zh-Hans\System.Windows.Forms.Design.resources.dll"
  File "Publish\zh-Hans\System.Windows.Forms.resources.dll"
  File "Publish\zh-Hans\System.Windows.Input.Manipulations.resources.dll"
  File "Publish\zh-Hans\System.Xaml.resources.dll"
  File "Publish\zh-Hans\UIAutomationClient.resources.dll"
  File "Publish\zh-Hans\UIAutomationClientSideProviders.resources.dll"
  File "Publish\zh-Hans\UIAutomationProvider.resources.dll"
  File "Publish\zh-Hans\UIAutomationTypes.resources.dll"
  File "Publish\zh-Hans\WindowsBase.resources.dll"
  File "Publish\zh-Hans\WindowsFormsIntegration.resources.dll"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\WSA助手\Uninstall.lnk" "$INSTDIR\uninst.exe"
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
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除 $(^Name) ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\zh-Hans\WindowsFormsIntegration.resources.dll"
  Delete "$INSTDIR\zh-Hans\WindowsBase.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationTypes.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationProvider.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationClientSideProviders.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationClient.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Xaml.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Input.Manipulations.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.Design.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.Design.Editors.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Controls.Ribbon.resources.dll"
  Delete "$INSTDIR\zh-Hans\ReachFramework.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationUI.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationFramework.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationCore.resources.dll"
  Delete "$INSTDIR\WSATools.runtimeconfig.json"
  Delete "$INSTDIR\WSATools.Libs.dll"
  Delete "$INSTDIR\WSATools.exe"
  Delete "$INSTDIR\WSATools.dll"
  Delete "$INSTDIR\WSATools.deps.json"
  Delete "$INSTDIR\wpfgfx_cor3.dll"
  Delete "$INSTDIR\WindowsFormsIntegration.dll"
  Delete "$INSTDIR\WindowsBase.dll"
  Delete "$INSTDIR\vcruntime140_cor3.dll"
  Delete "$INSTDIR\UIAutomationTypes.dll"
  Delete "$INSTDIR\UIAutomationProvider.dll"
  Delete "$INSTDIR\UIAutomationClientSideProviders.dll"
  Delete "$INSTDIR\UIAutomationClient.dll"
  Delete "$INSTDIR\ucrtbase.dll"
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
  Delete "$INSTDIR\System.Runtime.WindowsRuntime.UI.Xaml.dll"
  Delete "$INSTDIR\System.Runtime.WindowsRuntime.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Xml.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Primitives.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Json.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Formatters.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.dll"
  Delete "$INSTDIR\System.Runtime.Numerics.dll"
  Delete "$INSTDIR\System.Runtime.Loader.dll"
  Delete "$INSTDIR\System.Runtime.Intrinsics.dll"
  Delete "$INSTDIR\System.Runtime.InteropServices.WindowsRuntime.dll"
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
  Delete "$INSTDIR\System.Net.Primitives.dll"
  Delete "$INSTDIR\System.Net.Ping.dll"
  Delete "$INSTDIR\System.Net.NetworkInformation.dll"
  Delete "$INSTDIR\System.Net.NameResolution.dll"
  Delete "$INSTDIR\System.Net.Mail.dll"
  Delete "$INSTDIR\System.Net.HttpListener.dll"
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
  Delete "$INSTDIR\System.IO.Compression.FileSystem.dll"
  Delete "$INSTDIR\System.IO.Compression.dll"
  Delete "$INSTDIR\System.IO.Compression.Brotli.dll"
  Delete "$INSTDIR\System.Globalization.Extensions.dll"
  Delete "$INSTDIR\System.Globalization.dll"
  Delete "$INSTDIR\System.Globalization.Calendars.dll"
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
  Delete "$INSTDIR\netstandard.dll"
  Delete "$INSTDIR\mscorrc.dll"
  Delete "$INSTDIR\mscorrc.debug.dll"
  Delete "$INSTDIR\mscorlib.dll"
  Delete "$INSTDIR\mscordbi.dll"
  Delete "$INSTDIR\mscordaccore_amd64_amd64_4.700.21.47003.dll"
  Delete "$INSTDIR\mscordaccore.dll"
  Delete "$INSTDIR\Microsoft.Xaml.Behaviors.dll"
  Delete "$INSTDIR\Microsoft.Win32.SystemEvents.dll"
  Delete "$INSTDIR\Microsoft.Win32.Registry.dll"
  Delete "$INSTDIR\Microsoft.Win32.Registry.AccessControl.dll"
  Delete "$INSTDIR\Microsoft.Win32.Primitives.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.Core.dll"
  Delete "$INSTDIR\Microsoft.Toolkit.Mvvm.dll"
  Delete "$INSTDIR\Microsoft.DiaSymReader.Native.amd64.dll"
  Delete "$INSTDIR\Microsoft.CSharp.dll"
  Delete "$INSTDIR\ICSharpCode.SharpZipLib.dll"
  Delete "$INSTDIR\HtmlAgilityPack.dll"
  Delete "$INSTDIR\hostpolicy.dll"
  Delete "$INSTDIR\hostfxr.dll"
  Delete "$INSTDIR\HandyControl.dll"
  Delete "$INSTDIR\DynamicData.dll"
  Delete "$INSTDIR\DirectWriteForwarder.dll"
  Delete "$INSTDIR\dbgshim.dll"
  Delete "$INSTDIR\D3DCompiler_47_cor3.dll"
  Delete "$INSTDIR\coreclr.dll"
  Delete "$INSTDIR\clrjit.dll"
  Delete "$INSTDIR\clretwrc.dll"
  Delete "$INSTDIR\clrcompression.dll"
  Delete "$INSTDIR\api-ms-win-crt-utility-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-time-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-string-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-stdio-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-runtime-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-process-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-private-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-multibyte-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-math-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-locale-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-heap-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-filesystem-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-environment-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-convert-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-conio-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-util-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-timezone-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-sysinfo-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-synch-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-synch-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-string-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-rtlsupport-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-profile-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-1.dll"
  Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processenvironment-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-namedpipe-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-memory-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-localization-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-libraryloader-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-interlocked-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-heap-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-handle-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l2-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-errorhandling-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-debug-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-datetime-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-console-l1-1-0.dll"
  Delete "$INSTDIR\Accessibility.dll"

  Delete "$SMPROGRAMS\WSA助手\Uninstall.lnk"
  Delete "$DESKTOP\WSA助手.lnk"
  Delete "$SMPROGRAMS\WSA助手\WSA助手.lnk"

  RMDir "$SMPROGRAMS\WSA助手"
  RMDir "$INSTDIR\zh-Hans"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd