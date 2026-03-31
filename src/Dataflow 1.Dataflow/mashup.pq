[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "7d566fc1-901b-45a0-920f-bb457067351a"]}[Data]{[lakehouseId = "9d8974c8-b61b-4cd5-94e1-7ebc62099bdc"]}[Data];
[BindToDefaultDestination = true]
shared #"Referral Tracker 2025" = let
  Source = SharePoint.Tables("https://bcgov.sharepoint.com/teams/01287", [Implementation = "2.0", ViewMode = "All"]),
  #"Navigation 1" = Source{[Id = "5872f72b-f646-4bf6-bacd-389c84dbf98b"]}[Items]
in
  #"Navigation 1";
