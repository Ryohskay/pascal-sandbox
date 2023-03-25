program reverse_list;

procedure Show_List_Reverse(start: listptr);
  { display a linked list backwards }
  begin
    if start <> nil then
      begin
        Show_List_Reverse(start^.next);
        Write(start^.data:4);
      end;
  end;
