/// <summary>
/// Query CustomerOverview API (ID 50301).
/// </summary>
query 53600 KNHCustomerOverviewAPI
{
    APIGroup = 'knhGroup'; //Sets the group of the API endpoint the query is exposed in.
    APIPublisher = 'knh'; //Sets the publisher of the API endpoint the page is exposed in. 
    APIVersion = 'v2.0'; //Sets the version(s) of the API endpoint the query is exposed in. 
    EntityName = 'knhCustomerOverview'; //Sets the singular entity name for exposed page in the API endpoint.
    EntitySetName = 'knhCustomersOverview'; //Sets the plural entity name for exposed page in the API endpoint.
    QueryType = API;

    elements
    {
        dataitem(customer; Customer)
        {
            column(no; "No.") { }
            column(name; Name) { }
            dataitem(CLE; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = customer."No.";
                SqlJoinType = InnerJoin;
                DataItemTableFilter = "Document Type" = filter(Invoice | "Credit Memo");
                column(documentType; "Document Type") { }
                column(documentNo; "Document No.") { }
                column(documentDate; "Document Date") { }
                column(postingDate; "Posting Date") { }
                column(currCode; "Currency Code") { }
                column(amount; Amount) { }
                column(amountLCY; "Amount (LCY)") { }
                column(open; Open) { }
                column(remainingAmt; "Remaining Amount") { }
                column(remainingAmtLCY_; "Remaining Amt. (LCY)") { }
                column(dimension1Code; "Global Dimension 1 Code") { }
                column(dimension2Code; "Global Dimension 2 Code") { }
                dataitem(DCLE; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Customer No." = customer."No.", "Cust. Ledger Entry No." = CLE."Entry No.";
                    SqlJoinType = InnerJoin;
                    DataItemTableFilter = "Document Type" = filter(Invoice | "Credit Memo");

                    column(entry_Type; "Entry Type") { }
                    column(source_Code; "Source Code") { }
                    column(reason_Code; "Reason Code") { }
                    column(amount2; Amount) { }
                    column(amount__LCY_; "Amount (LCY)") { }
                    column(debit_Amount; "Debit Amount") { }
                    column(debit_Amount__LCY_; "Debit Amount (LCY)") { }
                    column(credit_Amount; "Credit Amount") { }
                    column(credit_Amount__LCY_; "Credit Amount (LCY)") { }
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
