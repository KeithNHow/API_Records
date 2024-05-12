/// <summary>
/// Page KNH Blob Card (ID 53602).
/// </summary>
page 53602 KNHBlob
{
    PageType = Card;
    Caption = 'Blob Card';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = KNHBlob;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(PK; Rec.PK)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PK field.';
                }
                group(Long_Description)
                {
                    Caption = 'Long Description';
                    field(LongDescription; LongDescription)
                    {
                        ApplicationArea = Basic, Suite;

                        MultiLine = true;
                        ShowCaption = false;
                        ToolTip = 'Specifies a Long Description.';

                        trigger OnValidate()
                        begin
                            Rec.SetLongDescription(LongDescription);
                        end;
                    }
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        LongDescription := Rec.GetLongDescription();
    end;

    var
        LongDescription: Text;
}