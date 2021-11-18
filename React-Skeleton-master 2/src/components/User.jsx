import React, { useState, useEffect, useContext } from 'react';
import SkeletonProfile from '../skeletons/SkeletonProfile';
import ThemeContext from '../context/theme';

const User = () => {
    const [profile, setProfile] = useState(null);
    const {state} = useContext(ThemeContext);
    useEffect(() => {
        setTimeout(async () => {
            const result = await fetch('https://jsonplaceholder.typicode.com/users/1')
            .then(response => response.json())
            .then(data => setProfile(data));
        }, 5000);
    })

    return (
        <div className="user">
            <h2>User Detail</h2>
        
        {profile && (
            <div className="profile">
            <h3>{profile.username}</h3>
            <p>{profile.email}</p>
            <a href={profile.website}>{profile.website}</a>
            </div>
        )}
        {
            !profile && (
                <SkeletonProfile theme={state.theme}/>
            )
        }
        </div>
    )
}

export default User;