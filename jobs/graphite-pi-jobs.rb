require_relative ".././lib/graphite.rb"

# last started parkingsessions
SCHEDULER.every '30s', :first_in => 0 do
    # Create an instance of our helper class
    q = Graphite.new "http://pi:88"

    pi = "dlemaire_dyndns-home_com.cpu-0.cpu-idle"
	
	
    #set title
    #title = pi 

    # get the current value
    current = q.value pi, "-5min"
    # get points for the last half hour
    points = q.points pi, "-60min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    #send_event 'pi', { current: current, value: current, points: points }
    send_event 'pi', { points: points }
    send_event 'pi', { current: current }
    
	
    pi2 = "pi2.cpu-0.cpu-idle"
    #set title
    #title = pi2 

    # get the current value
    current = q.value pi2, "-5min"
    # get points for the last half hour
    points = q.points pi2, "-60min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    #send_event 'pi2', { current: current, value: current, points: points }
    send_event 'pi2', { points: points }
    send_event 'pi2', { current: current }
	
    pi3 = "pi3.cpu-0.cpu-idle"
    #set title
    #title = pi3 

    # get the current value
    current = q.value pi3, "-5min"
    # get points for the last half hour
    points = q.points pi3, "-60min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    #send_event 'pi3', { current: current, value: current, points: points }
    send_event 'pi3', { points: points }
    send_event 'pi3', { current: current }
    


    onion = "onion.cpu-0.cpu-idle"
    #set title
    #title = onionp

    # get the current value
    current = q.value onion, "-5min"
    # get points for the last half hour
    points = q.points onion, "-60min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    #send_event 'onion', { current: current, value: current, points: points }
    send_event 'onion', { points: points }
    send_event 'onion', { current: current }
end
