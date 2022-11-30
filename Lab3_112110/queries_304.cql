-- e).

    -- UPDATE and DELETE in a list
        UPDATE owners SET cellar_names = cellar_names + ['Backflip'] WHERE name = 'LeBron James' AND date = '2014-05-20';
        UPDATE event SET event = event - ['Backflip'] WHERE name = 'LeBron James' AND date = '2014-05-20';
        DELETE event[1] FROM event WHERE name = 'LeBron James' AND date = '2014-05-20';
        DELETE event FROM event WHERE name = 'LeBron James' AND date = '2014-05-20';

    -- UPDATE and DELETE in a set
        UPDATE referee SET training = training + {'Super Special Mega Training'} WHERE name = 'Zach Zarba';
        UPDATE referee SET training = training - {'Super Special Mega Training'} WHERE name = 'Zach Zarba';
        UPDATE referee SET training = {} WHERE name = 'Zach Zarba';
        DELETE training['Super Special Mega Training'] FROM referee WHERE name = 'Zach Zarba';

    -- UPDATE and DELETE in a map
        UPDATE player SET team = team + {2020:'Sacramento Kings'} WHERE name = 'LeBron James';
        DELETE team[2020] FROM player WHERE name = 'LeBron James';
        DELETE team FROM player WHERE name = 'LeBron James';