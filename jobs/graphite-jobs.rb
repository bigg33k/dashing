require_relative ".././lib/graphite.rb"

# last started parkingsessions
SCHEDULER.every '30s', :first_in => 0 do
    # Create an instance of our helper class
    q = Graphite.new "http://pi:88"

    cx1_tld_target = "digtrace.bigg33k.dyn.cx.cx1_dyntld_net"
	
	
    #set title
    #title = cx1_dyntld_net

    # get the current value
    current = q.value cx1_tld_target, "-10min"
    # get points for the last half hour
    points = q.points cx1_tld_target, "-30min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    send_event 'response_time_cx1', { current: current, value: current, points: points }
    
    cx3_tld_target = "digtrace.bigg33k.dyn.cx.cx3_dyntld_net"
	
    send_event 'response_time_cx1', { points: points }
    send_event 'response_time_cx1', { current: current }
	
    #set title
    #title = cx3_dyntld_net

    # get the current value
    current = q.value cx3_tld_target, "-10min"
    # get points for the last half hour
    points = q.points cx3_tld_target, "-30min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    send_event 'response_time_cx3', { current: current, value: current, points: points }
    
    send_event 'response_time_cx3', { points: points }
    send_event 'response_time_cx3', { current: current }

    cx_ns_tld_target = "digtrace.bigg33k.dyn.cx.ns_anycast_nic_cx"
	
	
    #set title
    #title = ns_anycast_nic_cx

    # get the current value
    current = q.value cx_ns_tld_target, "-10min"
    # get points for the last half hour
    points = q.points cx_ns_tld_target, "-30min"

    # send to dashboard, so the number the meter and the graph widget can understand it
    #send_event 'response_time_cx_ns', { current: current, value: current, points: points }
    send_event 'response_time_cx_ns', { points: points }
    send_event 'response_time_cx_ns', { current: current  }
    

    isc_ns_tld_target = "digtrace.bigg33k.dyn.cx.sns-pb_isc_org"
	
	
    #set title
    #title = isc_ns_tld_target

    # get the current value
    current = q.value isc_ns_tld_target, "-10min"
    # get points for the last half hour
    points = q.points isc_ns_tld_target, "-30min"

    #(points << current).flatten
    # send to dashboard, so the number the meter and the graph widget can understand it
    send_event 'response_time_cx_isc', { points: points }
    send_event 'response_time_cx_isc', { current: current }
end
