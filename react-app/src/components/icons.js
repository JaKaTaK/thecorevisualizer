import React from 'react';
import icon from '../icons/AdrenalGlands.gif';

export default (props) => {
	switch(props.icon){
		case 'AdrenalGlands.gif':
			return (
				<div>
					<img src={icon} alt="Smiley face" height="42" width="42"/>
				</div>
				);
		default:
			return <img alt="You are missing an image " height="42" width="42"/>
	}
}
