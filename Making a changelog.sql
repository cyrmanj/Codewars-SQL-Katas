-- Kata: Making a changelog
-- Difficulty: 7 kyu
-- Concepts: Database Triggers, Pseudo-Records, Procedural SQL (PL/pgSQL), Audit Logging
-- Platform: Codewars

--for insert:
create or replace function log_insert_func() returns trigger as $$
begin
  insert into documents_changelog(document_id, old_data, new_data)
  values(new.id, null, new.data);
  return new;
end;
$$ language plpgsql;

create trigger log_insert
after insert on documents
for each row execute function log_insert_func();

--for update:
create or replace function log_update_func() returns trigger as $$
begin
  insert into documents_changelog(document_id, old_data, new_data)
  values(new.id, old.data, new.data);
  return new;
end;
$$ language plpgsql;

create trigger log_update
after update on documents
for each row execute function log_update_func();

--for delete
create or replace function log_delete_func() returns trigger as $$
begin
  insert into documents_changelog(document_id, old_data, new_data)
  values(old.id, old.data, null);
  return old;
end;
$$ language plpgsql;

create trigger log_delete 
after delete on documents
for each row execute function log_delete_func();