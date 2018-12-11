    
    faces = 6;
    previousValue = 1;

    displayNumber = (value) ->
        dice_face = document.getElementById('dice_face');
        dice_face.innerHTML = value;
        previousValue = value;
    
    roll = (faces) ->
        rand = Math.floor(Math.random() * faces) + 1; 
        return rand;

    button = document.getElementById('button');

    button.onclick = ->
        result = roll(6);
        displayNumber(result);
    
    twoRolles = document.getElementById('twoRolles');

    twoRolles.onclick = ->
        result = roll(6) + roll(6);
        displayNumber(result);

    average = document.getElementById('average');

    average.onclick = ->
        result = Math.ceil((roll(6) + roll(6)) / 2)
        displayNumber(result)


