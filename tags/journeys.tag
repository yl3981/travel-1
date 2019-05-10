<journeys>

    <div>
Question1: Destination of your new Journey
    <select value="destination" onchange={submitDestination}>
        <option value="">---</option>
        <option value="Shanghai">Shanghai</option>
        <option value="Paris">Paris</option>
        <option value="London">London</option>
        <option value="New York">New York</option>
        <option value="Japan">Japan</option>
    </select>
</div>
<!-- time: from
    <select value="time" onchange={submitTime}>
        <option value="">---</option>
        <option value="1">January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
    </select>
    to
    <select value="time" onchange={submitTime}>
        <option value="">---</option>
        <option value="1">January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
    </select> -->

    <form>
       <label for="start">Question 2: Choose your planned journey time</label><br>
       From <input type="month" id="start" name="start" min="2019-5.13" max="2020-5.13" onchange={submitStartTime}><br>
       To <input type="month" id="start" name="start" min="2019-5.13" max="2020-5.13" onchange={submitEndTime}>
    </form>

<div class="preference">
    Question 3: which are the three most important elements you would value in a journey? <br>
    The First:
<select value="first" onchange={firstPreferSet}>
  <option value="">---</option>
  <option value="gender"> travel buddy's gender</option>
  <option value="starSign">travel buddy's star sign</option>
  <option value="ages">travel buddy's ages</option>
  <option value="accomodationExpense">accomodation expense</option>
  <option value="foodExpense">food expense</option>
  <option value="transportation">transportation</option>
  <option value="timeSchedule">time schedule</option>
  <option value="travelType">travel type (casual/planned)</option>
</select>
   <br>The Second:
<select value="second" onchange={secondPreferSet}>
    <option value="">---</option>
    <option value="gender">gender</option>
    <option value="starSign">star sign</option>
    <option value="ages">ages</option>
    <option value="accomodationExpense">accomodation expense</option>
    <option value="foodExpense">food expense</option>
    <option value="transportation">transportation</option>
    <option value="timeSchedule">time schedule</option>
    <option value="travelType">travel type (casual/planned)</option>
</select>
   <br>The Third:
<select value="third" onchange={thirdPreferSet}>
    <option value="">---</option>
    <option value="gender">gender</option>
    <option value="starSign">star sign</option>
    <option value="ages">ages</option>
    <option value="accomodationExpense">accomodation expense</option>
    <option value="foodExpense">food expense</option>
    <option value="transportation">transportation</option>
    <option value="timeSchedule">time schedule</option>
    <option value="travelType">travel type (casual/planned)</option>
</select>
</div>

<div>
<p> Choose a star rating of accomodation </p>
<button type="button" class="btn btn-outline-dark" id="button">1 star</button>
<button type="button" class="btn btn-outline-dark" id="button"> 2 star </button>
<button type="button" class="btn btn-outline-dark" id="button"> 3 star </button>
  <button type="button" class="btn btn-outline-dark" id="button"> 4 star </button>
    <button type="button" class="btn btn-outline-dark" id="button"> 5 star </button>
</div>

<button type="button" name="button" onclick={submitJourney}>Submit</button>
    <script>
    var journey={};
    var destination="";
    var time="";
    var startTime="";
    var endTime="";
    var accomodation=""
    var firstPrefer=""
    var secondPrefer=""
    var thirdPrefer=""
        submitDestination(){
            destination=event.target.value
            observer.trigger('destination',destination)
            console.log(destination)
        }
        // submitTime(){
        //     time=event.target.value
        //     console.log(time)
        // }
         submitStartTime(){
             startTime=event.target.value
             // observer.trigger('startTime',startTime)
             // console.log(startTime)
         }
         submitEndTime(){
             endTime=event.target.value
             // observer.trigger('endTime',endTime)
             // console.log(endTime)
         }
         firstPreferSet(){
           firstPrefer=event.target.value
           // console.log('firstPrefer',firstPrefer)
         }
         secondPreferSet(){
             secondPrefer=event.target.value
             // console.log('secondPrefer',secondPrefer)
         }
         thirdPreferSet(){
             thirdPrefer=event.target.value
             // console.log('thirdPrefer',thirdPrefer)
         }
          document.body.addEventListener("click", event => {
              if (event.target.id == "button") {
                console.log("Clicked", event.target.textContent);
                accomodation=event.target.textContent
              }
            });

          submitJourney(){
              journey={destination:destination,
                       startTime:startTime,
                       endTime:endTime,
                       accomodation:accomodation,
                       firstPrefer:firstPrefer,
                       secondPrefer:secondPrefer,
                       thirdPrefer:thirdPrefer
                   }
                observer.trigger('journey',journey)
          }

    </script>
</journeys>
