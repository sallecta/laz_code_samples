unit uForm1;

{
This demo was written by Andre .v.d. Merwe and marked public domain.
Quickly converted to Lazarus and FPC by Tom Lisjac <vlx@users.sourceforge.net>

The original source and an *excellent* tutorial on the TTreeview
component can be found here:
  http://users.iafrica.com/d/da/dart/Delphi/TTreeView/treeview1.html
}

interface 

{$mode objfpc} {$H+}

uses
  SysUtils, LResources, Classes, LCLProc, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    treeview1: TTreeView;
    but_Add: TButton;
    but_Remove: TButton;
    procedure but_AddClick(Sender: TObject);
    procedure but_RemoveClick(Sender: TObject);
  private
  public
    constructor Create(TheOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

procedure TForm1.but_AddClick(Sender: TObject);
var
   sText : ansistring;
begin
      {If nothing is selected}
   if(  treeview1.Selected = nil  ) then
   begin
         {Does a root node already exist?}
      if(  treeview1.Items.Count = 0  ) then
      begin
            {Add the root node}
         with treeview1.Items.AddFirst(  nil,  'Root'  ) do
         begin
            Selected := true;
            debugln('tv_eg1.Selected=',DbgS(treeview1.Selected));
         end;
      end
      else begin
            {There is a root, so user must first select a node}
         //MessageBeep(  -1  );
         ShowMessage(  'Select a parent node'  );
         Exit;
      end;
   end
   else begin
         {Get a name for the new node}
      sText := 'New node';
      InputQuery(  'New Node',  'Caption ?', sText  );

         {Add the node as a child of the selected node}
      with treeview1.Items.AddChild(  treeview1.Selected,  sText  ) do
      begin
         MakeVisible;
      end;
   end;
end;



procedure TForm1.but_RemoveClick(Sender: TObject);
begin
      {Make sure somthing is selected, before trying to
        delete it}
   if(  treeview1.Selected = nil  ) then
   begin
      //MessageBeep(  -1  );
      ShowMessage(  'Nothing selected'  );
      Exit;
   end;

      {Dont allow user to delete the root node}
   if(  treeview1.Selected.Level = 0  ) then
   begin
      //MessageBeep(  -1  );
      ShowMessage(  'Cant delete the root node'  );
      Exit;
   end;


      {Delete the node}
   treeview1.Selected.Delete;
end;

constructor TForm1.Create(TheOwner: TComponent);
var
  RootNode: TTreeNode;
begin
  inherited Create(TheOwner);
  RootNode:=treeview1.Items.AddFirst(nil,'Root');
  treeview1.Items.AddChild(RootNode,'Node1');
  treeview1.Items.AddChild(RootNode,'Node2');
  treeview1.Items.AddChild(RootNode,'Node3');
  RootNode.Expanded:=true;
end;

{$R *.lfm}

end.
