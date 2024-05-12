/// <summary>
/// Codeunit KNHTableReview (ID 53600).
/// </summary>
codeunit 53600 "TableReview"
{
    trigger OnRun()
    var
        Customer: Record Customer;
        CustLedgerEntry: Record "Cust. Ledger Entry";
        DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
    begin
        Customer."No." := '';
        CustLedgerEntry."Entry No." := 0;
        CustLedgerEntry."Customer No." := 'XXX';
        DetailedCustLedgEntry."Entry No." := 0;
        DetailedCustLedgEntry."Customer No." := 'XXX';
        DetailedCustLedgEntry."Cust. Ledger Entry No." := 0;
        DetailedCustLedgEntry."Document Type" := DetailedCustLedgEntry."Document Type"::Invoice;
    end;
}
