#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList iOS
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyPDFs
					AppliesTo = 0
					Architecture = 0
					Target = 1
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vUmVzZWFyY2gvUGxhdGVsZXRzLnBkZg==
				End
				Begin SignProjectStep Sign
				End
			End
#tag EndBuildAutomation
