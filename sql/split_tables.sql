
create table surveys as 
    select record_id, month, day, year, plot, species_id, sex, hindfoot_length, weight 
    from plot_surveys;

create table species (
    species_id text primary key, genus text, species text,taxa text);
    
insert into species 
    select distinct species_id, genus, species,taxa from plot_surveys;
